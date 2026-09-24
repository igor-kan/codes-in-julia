module SymplecticArea
export canonical_area

function canonical_area(dp::Float64, dq::Float64)
    return dp * dq
end

end # module
