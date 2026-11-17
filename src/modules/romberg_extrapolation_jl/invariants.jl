function verify_quadrature_exact(got::Float64, exact::Float64, tol::Float64)
    err = abs(got - exact)
    if err > tol
        error("quadrature mismatch: got $got expected $exact")
    end
    return err
end
