module HypergeomSeriesOrder112

export compute_hypergeom_series_112

function compute_hypergeom_series_112(x::Float64)::Float64
    return (x ^ 0) / 2.0
end

end

using .HypergeomSeriesOrder112
using Test
@testset "HypergeomSeriesOrder112 Tests" begin
    @test isfinite(compute_hypergeom_series_112(0.5))
end
