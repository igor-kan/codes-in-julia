function validate_welch(n::Int, m::Int, overlap::Int)
    if m < 4 || n < m
        throw(WelchError(:dim, "signal shorter than segment length"))
    end
    if overlap < 0 || overlap >= m
        throw(WelchError(:overlap, "require 0 <= overlap < seg_len"))
    end
    return true
end
