struct BezierCurve
    ctrl::Matrix{Float64}
    degree::Int
end

struct ModuleMeta_Bezier
    slug::Symbol
    version::Int
end
