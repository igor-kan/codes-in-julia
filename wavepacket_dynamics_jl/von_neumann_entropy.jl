module VonNeumann
export entropy_binary

function entropy_binary(p::Float64)
    return (p > 0 && p < 1) ? -p*log2(p) - (1-p)*log2(1-p) : 0.0
end

end # module
