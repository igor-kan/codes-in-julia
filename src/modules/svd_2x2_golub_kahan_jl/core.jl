function svd_values_2x2(A::Matrix{Float64})
    f2 = sum(abs2, A)
    detA = A[1, 1] * A[2, 2] - A[1, 2] * A[2, 1]
    disc = sqrt(max(0.0, f2^2 - 4.0 * detA^2))
    s1 = sqrt(0.5 * (f2 + disc))
    s2 = sqrt(max(0.0, 0.5 * (f2 - disc)))
    return Svd2Res(s1, s2, f2)
end
