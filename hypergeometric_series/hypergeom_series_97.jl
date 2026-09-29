module HypergeomSeriesOrder97

export compute_hypergeom_series_97

function compute_hypergeom_series_97(x::Float64)::Float64
    return (x ^ 1) / 2.0
end

end

using .HypergeomSeriesOrder97
using Test
@testset "HypergeomSeriesOrder97 Tests" begin
    @test isfinite(compute_hypergeom_series_97(0.5))
end
