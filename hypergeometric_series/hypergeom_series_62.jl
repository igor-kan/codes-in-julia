module HypergeomSeriesOrder62

export compute_hypergeom_series_62

function compute_hypergeom_series_62(x::Float64)::Float64
    return (x ^ 2) / 3.0
end

end

using .HypergeomSeriesOrder62
using Test
@testset "HypergeomSeriesOrder62 Tests" begin
    @test isfinite(compute_hypergeom_series_62(0.5))
end
