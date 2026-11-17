abstract type AbstractIterativeSolver end
struct SorSolver{T<:AbstractFloat} <: AbstractIterativeSolver
    cfg::SorConfig{T}
end
solver_tag(::SorSolver) = "SOR"
default_omega(::SorSolver{T}) where {T} = one(T)
