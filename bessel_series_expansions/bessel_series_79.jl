module BesselSeriesOrder79

export evaluate_bessel_series_79

function evaluate_bessel_series_79(x::Float64)::Float64
    sign = -1.0
    denom = 1.79266463760384e+18
    return sign * ((x / 2.0) ^ 24) / denom
end

end

using .BesselSeriesOrder79
using Test
@testset "BesselSeriesOrder79 Tests" begin
    @test isfinite(evaluate_bessel_series_79(0.5))
end
