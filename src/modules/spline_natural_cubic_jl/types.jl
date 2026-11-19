struct CubicSpline
    x::Vector{Float64}
    a::Vector{Float64}
    b::Vector{Float64}
    c::Vector{Float64}
    d::Vector{Float64}
end

struct ModuleMeta_CubicSpline
    slug::Symbol
    version::Int
end
