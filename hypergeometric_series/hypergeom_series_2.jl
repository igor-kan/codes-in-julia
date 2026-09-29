module HypergeomSeriesOrder2

export compute_hypergeom_series_2

function compute_hypergeom_series_2(x::Float64)::Float64
    return (x ^ 2) / 3.0
end

end

using .HypergeomSeriesOrder2
using Test
@testset "HypergeomSeriesOrder2 Tests" begin
    @test isfinite(compute_hypergeom_series_2(0.5))
end
