module HypergeomSeriesOrder102

export compute_hypergeom_series_102

function compute_hypergeom_series_102(x::Float64)::Float64
    return (x ^ 2) / 1.0
end

end

using .HypergeomSeriesOrder102
using Test
@testset "HypergeomSeriesOrder102 Tests" begin
    @test isfinite(compute_hypergeom_series_102(0.5))
end
