function solve_cg_spd(A::Matrix{Float64}, b::Vector{Float64}, tol::Float64 = 1e-12)
    n = length(b)
    x = zeros(Float64, n)
    r = copy(b)
    p = copy(r)
    rsold = sum(abs2, r)
    it = 0
    for k in 1:(2 * n + 5)
        it = k
        Ap = A * p
        alpha = rsold / sum(p .* Ap)
        x .+= alpha .* p
        r .-= alpha .* Ap
        rsnew = sum(abs2, r)
        sqrt(rsnew) <= tol && return CgTrace(x, it, sqrt(rsnew))
        p = r .+ (rsnew / rsold) .* p
        rsold = rsnew
    end
    return CgTrace(x, it, sqrt(rsold))
end
