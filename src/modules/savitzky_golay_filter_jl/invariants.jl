function verify_sg_exact_poly(kernel::SgKernel)
    err = abs(sum(kernel.weights) - 1.0)
    if err > 1e-11
        error("SG weights do not sum to 1")
    end
    return err
end
