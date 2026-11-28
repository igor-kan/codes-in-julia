function strassen_mul(a::Matrix{Float64}, b::Matrix{Float64})
    n = size(a, 1)
    if n <= 2
        return a * b
    end
    m = div(n, 2)
    a11 = a[1:m, 1:m]; a12 = a[1:m, (m + 1):n]
    a21 = a[(m + 1):n, 1:m]; a22 = a[(m + 1):n, (m + 1):n]
    b11 = b[1:m, 1:m]; b12 = b[1:m, (m + 1):n]
    b21 = b[(m + 1):n, 1:m]; b22 = b[(m + 1):n, (m + 1):n]
    p1 = strassen_mul(a11 .+ a22, b11 .+ b22)
    p2 = strassen_mul(a21 .+ a22, b11)
    p3 = strassen_mul(a11, b12 .- b22)
    p4 = strassen_mul(a22, b21 .- b11)
    p5 = strassen_mul(a11 .+ a12, b22)
    p6 = strassen_mul(a21 .- a11, b11 .+ b12)
    p7 = strassen_mul(a12 .- a22, b21 .+ b22)
    c11 = p1 .+ p4 .- p5 .+ p7
    c12 = p3 .+ p5
    c21 = p2 .+ p4
    c22 = p1 .- p2 .+ p3 .+ p6
    return [c11 c12; c21 c22]
end
