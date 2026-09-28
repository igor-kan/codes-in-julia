module BesselSeriesOrder94

export evaluate_bessel_series_94

function evaluate_bessel_series_94(x::Float64)::Float64
    sign = 1.0
    denom = 4.60970906812416e+18
    return sign * ((x / 2.0) ^ 24) / denom
end

end

using .BesselSeriesOrder94
using Test
@testset "BesselSeriesOrder94 Tests" begin
    @test isfinite(evaluate_bessel_series_94(0.5))
end
