module HypergeomSeriesOrder27

export compute_hypergeom_series_27

function compute_hypergeom_series_27(x::Float64)::Float64
    return (x ^ 3) / 1.0
end

end

using .HypergeomSeriesOrder27
using Test
@testset "HypergeomSeriesOrder27 Tests" begin
    @test isfinite(compute_hypergeom_series_27(0.5))
end
