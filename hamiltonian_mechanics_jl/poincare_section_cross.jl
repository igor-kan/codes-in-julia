module PoincareSection
export plane_crossing_detected

function plane_crossing_detected(z_prev::Float64, z_curr::Float64)
    return (z_prev * z_curr <= 0.0) ? 1.0 : 0.0
end

end # module
