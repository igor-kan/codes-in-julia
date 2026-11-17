function compute_sg_weights(f::SavitzkyGolay)
    m = f.half_width
    p = f.degree
    validate_sg(m, p)
    k = 2 * m + 1
    J = zeros(Float64, k, p + 1)
    for row in 1:k
        z = Float64(row - 1 - m)
        val = 1.0
        for col in 1:(p + 1)
            J[row, col] = val
            val *= z
        end
    end
    G = J' * J
    C = inv(G) * J'
    return SgKernel(m, p, vec(C[1, :]))
end

function apply_sg_interior(kernel::SgKernel, y::Vector{Float64})
    m = kernel.half_width
    n = length(y)
    out = copy(y)
    @inbounds for i in (m + 1):(n - m)
        acc = 0.0
        for k in -m:m
            acc += kernel.weights[k + m + 1] * y[i + k]
        end
        out[i] = acc
    end
    return out
end
