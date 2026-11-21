function conjugate_gradient(A::Matrix{Float64}, b::Vector{Float64}, tol::Float64 = 1e-10)
    n = length(b)
    x = zeros(Float64, n)
    r = copy(b)
    p = copy(r)
    rsold = sum(r .* r)
    for _ in 1:(2 * n + 10)
        if sqrt(rsold) < tol
            break
        end
        Ap = A * p
        alpha = rsold / sum(p .* Ap)
        x .= x .+ alpha .* p
        r .= r .- alpha .* Ap
        rsnew = sum(r .* r)
        p .= r .+ (rsnew / rsold) .* p
        rsold = rsnew
    end
    return x
end
