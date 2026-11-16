function _logsumexp(xs::AbstractVector{T}) where {T<:AbstractFloat}
    m = maximum(xs)
    isfinite(m) || return m
    return m + log(sum(exp.(xs .- m)))
end

function forward_log_likelihood(model::HmmSpec{T}, obs::Vector{Int}, floor_eps::T = T(1e-300)) where {T<:AbstractFloat}
    validate_hmm(model, obs)
    S = length(model.init_probs)
    log_a = log.(max.(model.trans_mat, floor_eps))
    log_e = log.(max.(model.emit_mat, floor_eps))
    alpha = log.(max.(model.init_probs, floor_eps)) .+ @view(log_e[:, obs[1]])
    for t in 2:length(obs)
        nxt = Vector{T}(undef, S)
        for j in 1:S
            nxt[j] = _logsumexp(alpha .+ @view(log_a[:, j])) + log_e[j, obs[t]]
        end
        alpha = nxt
    end
    return _logsumexp(alpha)
end

function decode_map_sequence(
    dec::LogViterbiDecoder,
    model::HmmSpec{T},
    obs::Vector{Int},
) where {T<:AbstractFloat}
    validate_hmm(model, obs)
    S = length(model.init_probs)
    Tn = length(obs)
    eps = T(dec.floor_eps)
    log_a = log.(max.(model.trans_mat, eps))
    log_e = log.(max.(model.emit_mat, eps))
    dp = log.(max.(model.init_probs, eps)) .+ @view(log_e[:, obs[1]])
    bp = zeros(Int, S, Tn)

    for t in 2:Tn
        nxt = Vector{T}(undef, S)
        for j in 1:S
            best_val = T(-Inf)
            best_i = 1
            for i in 1:S
                cand = dp[i] + log_a[i, j]
                if cand > best_val
                    best_val = cand
                    best_i = i
                end
            end
            nxt[j] = best_val + log_e[j, obs[t]]
            bp[j, t] = best_i
        end
        dp = nxt
    end
    last_s = argmax(dp)
    best_logp = dp[last_s]
    path = Vector{Int}(undef, Tn)
    path[Tn] = last_s
    for t in Tn:-1:2
        path[t - 1] = bp[path[t], t]
    end
    marg = forward_log_likelihood(model, obs, eps)
    return ViterbiPath{T}(path, best_logp, marg)
end
