function verify_viterbi_bound(model::HmmSpec{T}, obs::Vector{Int}, res::ViterbiPath{T}) where {T<:AbstractFloat}
    direct = path_log_score(model, res.states, obs)
    if abs(direct - res.log_joint) > T(1e-8) || res.log_joint > res.log_marginal + T(1e-9)
        throw(HmmDomainError("Viterbi MAP path vs Forward bound violated"))
    end
    return true
end
