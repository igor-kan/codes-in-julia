struct StandardLp{T<:AbstractFloat}
    A::Matrix{T}
    b::Vector{T}
    c::Vector{T}
end

struct LpSolution{T<:AbstractFloat}
    status::Symbol
    objective::T
    x::Vector{T}
    pivots::Int
end
