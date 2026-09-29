module HypergeomSeriesOrder117

export compute_hypergeom_series_117

function compute_hypergeom_series_117(x::Float64)::Float64
    return (x ^ 1) / 1.0
end

end

using .HypergeomSeriesOrder117
using Test
@testset "HypergeomSeriesOrder117 Tests" begin
    @test isfinite(compute_hypergeom_series_117(0.5))
end
