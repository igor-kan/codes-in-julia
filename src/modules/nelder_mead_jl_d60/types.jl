struct SimplexResult
    x_opt::Vector{Float64}
    f_opt::Float64
    iters::Int
end

struct ModuleMeta_NelderMead
    slug::Symbol
    version::Int
end
