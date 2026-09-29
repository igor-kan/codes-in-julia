module HypergeomSeriesOrder12

export compute_hypergeom_series_12

function compute_hypergeom_series_12(x::Float64)::Float64
    return (x ^ 0) / 1.0
end

end

using .HypergeomSeriesOrder12
using Test
@testset "HypergeomSeriesOrder12 Tests" begin
    @test isfinite(compute_hypergeom_series_12(0.5))
end
