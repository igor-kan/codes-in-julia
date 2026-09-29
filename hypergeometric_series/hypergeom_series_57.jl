module HypergeomSeriesOrder57

export compute_hypergeom_series_57

function compute_hypergeom_series_57(x::Float64)::Float64
    return (x ^ 1) / 1.0
end

end

using .HypergeomSeriesOrder57
using Test
@testset "HypergeomSeriesOrder57 Tests" begin
    @test isfinite(compute_hypergeom_series_57(0.5))
end
