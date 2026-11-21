function jacobi_eig2x2(a11::Float64, a12::Float64, a22::Float64)
    tr = a11 + a22
    disc = sqrt((a11 - a22)^2 + 4.0 * a12^2)
    l1 = 0.5 * (tr + disc)
    l2 = 0.5 * (tr - disc)
    return l1, l2
end
