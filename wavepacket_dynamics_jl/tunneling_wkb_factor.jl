module TunnelingWKB
export wkb_gamow

function wkb_gamow(v0::Float64, e::Float64, a::Float64)
    return exp(-2.0 * sqrt(2.0 * (v0 - e)) * a)
end

end # module
