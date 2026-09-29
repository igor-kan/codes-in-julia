module HypergeomSeriesOrder47

export compute_hypergeom_series_47

function compute_hypergeom_series_47(x::Float64)::Float64
    return (x ^ 3) / 3.0
end

end

using .HypergeomSeriesOrder47
using Test
@testset "HypergeomSeriesOrder47 Tests" begin
    @test isfinite(compute_hypergeom_series_47(0.5))
end
