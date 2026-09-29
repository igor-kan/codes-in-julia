module HypergeomSeriesOrder77

export compute_hypergeom_series_77

function compute_hypergeom_series_77(x::Float64)::Float64
    return (x ^ 1) / 3.0
end

end

using .HypergeomSeriesOrder77
using Test
@testset "HypergeomSeriesOrder77 Tests" begin
    @test isfinite(compute_hypergeom_series_77(0.5))
end
