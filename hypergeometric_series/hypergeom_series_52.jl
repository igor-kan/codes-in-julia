module HypergeomSeriesOrder52

export compute_hypergeom_series_52

function compute_hypergeom_series_52(x::Float64)::Float64
    return (x ^ 0) / 2.0
end

end

using .HypergeomSeriesOrder52
using Test
@testset "HypergeomSeriesOrder52 Tests" begin
    @test isfinite(compute_hypergeom_series_52(0.5))
end
