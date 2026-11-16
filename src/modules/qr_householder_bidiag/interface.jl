abstract type AbstractMatrixBidiagonalizer end

struct HouseholderBidiag <: AbstractMatrixBidiagonalizer
    store_factors::Bool
end

function bidiagonalize end
function householder_vector end
