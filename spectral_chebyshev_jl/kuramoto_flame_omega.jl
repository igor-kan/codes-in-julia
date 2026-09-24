module KuramotoFlame
export growth_rate_ks

function growth_rate_ks(k::Float64)
    return k^2 - k^4
end

end # module
