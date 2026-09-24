module SchrodingerFFT
export propagate_free_phase

function propagate_free_phase(k::Float64, dt::Float64)
    return exp(-0.5im * k^2 * dt)
end

end # module
