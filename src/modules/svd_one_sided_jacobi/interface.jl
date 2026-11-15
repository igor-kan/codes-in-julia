abstract type AbstractSvdFactorizer end

struct HestenesJacobiSvd <: AbstractSvdFactorizer
    max_sweeps::Int
    tol::Float64
end

function jacobi_svd end
