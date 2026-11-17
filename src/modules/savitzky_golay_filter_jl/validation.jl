function validate_sg(m::Int, p::Int)
    if m < 1 || p < 0 || 2 * m + 1 <= p
        throw(SgError(:params, "require 2*m+1 > degree"))
    end
    return true
end
