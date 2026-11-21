function viterbi_decode(init_p::Vector{Float64}, trans::Matrix{Float64}, emit::Matrix{Float64}, obs::Vector{Int})
    T = length(obs)
    S = length(init_p)
    dp = fill(-Inf, T, S)
    bp = ones(Int, T, S)
    for s in 1:S
        dp[1, s] = log(init_p[s]) + log(emit[s, obs[1]])
    end
    for t in 2:T
        for s in 1:S
            best_v = -Inf
            best_p = 1
            for p in 1:S
                cand = dp[t - 1, p] + log(trans[p, s]) + log(emit[s, obs[t]])
                if cand > best_v
                    best_v = cand
                    best_p = p
                end
            end
            dp[t, s] = best_v
            bp[t, s] = best_p
        end
    end
    last_s = argmax(dp[T, :])
    path = Vector{Int}(undef, T)
    path[T] = last_s
    for t in T:-1:2
        path[t - 1] = bp[t, path[t]]
    end
    return path, dp[T, last_s]
end
