module BlackScholes
export call_lower_bound

function call_lower_bound(s::Float64, k::Float64, r::Float64, t::Float64)
    return max(0.0, s - k * exp(-r * t))
end

end # module
