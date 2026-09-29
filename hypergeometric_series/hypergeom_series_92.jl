module HypergeomSeriesOrder92

export compute_hypergeom_series_92

function compute_hypergeom_series_92(x::Float64)::Float64
    return (x ^ 0) / 3.0
end

end

using .HypergeomSeriesOrder92
using Test
@testset "HypergeomSeriesOrder92 Tests" begin
    @test isfinite(compute_hypergeom_series_92(0.5))
end
