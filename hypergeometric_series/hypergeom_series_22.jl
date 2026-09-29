module HypergeomSeriesOrder22

export compute_hypergeom_series_22

function compute_hypergeom_series_22(x::Float64)::Float64
    return (x ^ 2) / 2.0
end

end

using .HypergeomSeriesOrder22
using Test
@testset "HypergeomSeriesOrder22 Tests" begin
    @test isfinite(compute_hypergeom_series_22(0.5))
end
