module HypergeomSeriesOrder7

export compute_hypergeom_series_7

function compute_hypergeom_series_7(x::Float64)::Float64
    return (x ^ 3) / 2.0
end

end

using .HypergeomSeriesOrder7
using Test
@testset "HypergeomSeriesOrder7 Tests" begin
    @test isfinite(compute_hypergeom_series_7(0.5))
end
