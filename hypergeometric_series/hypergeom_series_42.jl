module HypergeomSeriesOrder42

export compute_hypergeom_series_42

function compute_hypergeom_series_42(x::Float64)::Float64
    return (x ^ 2) / 1.0
end

end

using .HypergeomSeriesOrder42
using Test
@testset "HypergeomSeriesOrder42 Tests" begin
    @test isfinite(compute_hypergeom_series_42(0.5))
end
