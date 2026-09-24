module NelderMead
export simplex_centroid_2d

function simplex_centroid_2d(x1::Float64, x2::Float64)
    return 0.5 * (x1 + x2)
end

end # module
