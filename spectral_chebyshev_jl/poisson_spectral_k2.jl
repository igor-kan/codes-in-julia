module PoissonSpectral
export laplacian_k2

function laplacian_k2(kx::Float64, ky::Float64)
    return -(kx^2 + ky^2)
end

end # module
