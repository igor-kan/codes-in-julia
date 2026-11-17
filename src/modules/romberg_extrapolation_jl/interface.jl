abstract type QuadratureRule end
struct RombergRule <: QuadratureRule
    max_levels::Int
    tol::Float64
end