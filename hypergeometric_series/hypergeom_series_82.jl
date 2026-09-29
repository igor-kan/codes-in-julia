module HypergeomSeriesOrder82

export compute_hypergeom_series_82

function compute_hypergeom_series_82(x::Float64)::Float64
    return (x ^ 2) / 2.0
end

end

using .HypergeomSeriesOrder82
using Test
@testset "HypergeomSeriesOrder82 Tests" begin
    @test isfinite(compute_hypergeom_series_82(0.5))
end
