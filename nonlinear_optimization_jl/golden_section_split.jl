module GoldenSection
export golden_point

function golden_point(a::Float64, b::Float64)
    return a + 0.6180339887 * (b - a)
end

end # module
