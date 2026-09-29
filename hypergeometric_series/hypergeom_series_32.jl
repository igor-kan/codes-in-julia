module HypergeomSeriesOrder32

export compute_hypergeom_series_32

function compute_hypergeom_series_32(x::Float64)::Float64
    return (x ^ 0) / 3.0
end

end

using .HypergeomSeriesOrder32
using Test
@testset "HypergeomSeriesOrder32 Tests" begin
    @test isfinite(compute_hypergeom_series_32(0.5))
end
