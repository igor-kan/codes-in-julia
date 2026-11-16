struct HmmSpec{T<:AbstractFloat}
    init_probs::Vector{T}
    trans_mat::Matrix{T}
    emit_mat::Matrix{T}
end

struct ViterbiPath{T<:AbstractFloat}
    states::Vector{Int}
    log_joint::T
    log_marginal::T
end
