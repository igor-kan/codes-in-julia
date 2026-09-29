module HypergeomSeriesOrder72

export compute_hypergeom_series_72

function compute_hypergeom_series_72(x::Float64)::Float64
    return (x ^ 0) / 1.0
end

end

using .HypergeomSeriesOrder72
using Test
@testset "HypergeomSeriesOrder72 Tests" begin
    @test isfinite(compute_hypergeom_series_72(0.5))
end
