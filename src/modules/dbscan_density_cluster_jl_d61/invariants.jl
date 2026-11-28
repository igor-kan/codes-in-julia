function verify_close_Dbscan(got::Real, expected::Real, tol::Float64 = 1e-9)
    err = abs(Float64(got) - Float64(expected))
    if err > tol
        error("invariant failed: got $got expected $expected")
    end
    return err
end
