function power_top1(A::Matrix{Float64}; iters::Int = 60)
    n = size(A, 1)
    v = ones(Float64, n) / sqrt(n)
    v[1] += 0.13
    v ./= sqrt(sum(v .* v))
    lam = 0.0
    for _ in 1:iters
        w = A * v
        nrm = sqrt(sum(w .* w))
        v = w / nrm
        lam = sum(v .* (A * v))
    end
    return lam, v
end

function top2_sym_eigs(A::Matrix{Float64})
    l1, v1 = power_top1(A)
    A2 = A .- l1 .* (v1 * v1')
    l2, _ = power_top1(A2)
    return l1, l2
end
