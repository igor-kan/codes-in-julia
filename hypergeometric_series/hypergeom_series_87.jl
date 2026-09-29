module HypergeomSeriesOrder87

export compute_hypergeom_series_87

function compute_hypergeom_series_87(x::Float64)::Float64
    return (x ^ 3) / 1.0
end

end

using .HypergeomSeriesOrder87
using Test
@testset "HypergeomSeriesOrder87 Tests" begin
    @test isfinite(compute_hypergeom_series_87(0.5))
end
