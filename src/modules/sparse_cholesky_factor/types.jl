module Sparse_cholesky_factorTypes

export Config, Context, ALIGNMENT

const ALIGNMENT = 64

struct Config
    capacity::Int
    tolerance::Float64
    max_iterations::Int

    Config(; capacity=1024, tolerance=1e-12, max_iterations=1000) =
        new(capacity, tolerance, max_iterations)
end

mutable struct Context
    config::Config
    operations_count::Int
    buffer::Vector{Float64}

    Context(cfg::Config=Config()) =
        new(cfg, 0, Float64[])
end

end # module
