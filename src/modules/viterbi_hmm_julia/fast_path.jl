function path_log_score(model::HmmSpec{T}, states::Vector{Int}, obs::Vector{Int}) where {T<:AbstractFloat}
    sc = log(model.init_probs[states[1]]) + log(model.emit_mat[states[1], obs[1]])
    for t in 2:length(obs)
        sc += log(model.trans_mat[states[t - 1], states[t]]) + log(model.emit_mat[states[t], obs[t]])
    end
    return sc
end
