module HypergeomSeriesOrder107

export compute_hypergeom_series_107

function compute_hypergeom_series_107(x::Float64)::Float64
    return (x ^ 3) / 3.0
end

end

using .HypergeomSeriesOrder107
using Test
@testset "HypergeomSeriesOrder107 Tests" begin
    @test isfinite(compute_hypergeom_series_107(0.5))
end
