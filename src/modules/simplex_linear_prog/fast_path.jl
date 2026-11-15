function primal_slack(lp::StandardLp{T}, x::Vector{T}) where {T<:AbstractFloat}
    ax = lp.A * x
    return lp.b .- ax
end

function primal_objective(lp::StandardLp{T}, x::Vector{T}) where {T<:AbstractFloat}
    return sum(lp.c .* x)
end
