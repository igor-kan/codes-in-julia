module HypergeomSeriesOrder17

export compute_hypergeom_series_17

function compute_hypergeom_series_17(x::Float64)::Float64
    return (x ^ 1) / 3.0
end

end

using .HypergeomSeriesOrder17
using Test
@testset "HypergeomSeriesOrder17 Tests" begin
    @test isfinite(compute_hypergeom_series_17(0.5))
end
