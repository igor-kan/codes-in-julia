module HypergeomSeriesOrder37

export compute_hypergeom_series_37

function compute_hypergeom_series_37(x::Float64)::Float64
    return (x ^ 1) / 2.0
end

end

using .HypergeomSeriesOrder37
using Test
@testset "HypergeomSeriesOrder37 Tests" begin
    @test isfinite(compute_hypergeom_series_37(0.5))
end
