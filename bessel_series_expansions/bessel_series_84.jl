module BesselSeriesOrder84

export evaluate_bessel_series_84

function evaluate_bessel_series_84(x::Float64)::Float64
    sign = 1.0
    denom = 31384184832000.0
    return sign * ((x / 2.0) ^ 19) / denom
end

end

using .BesselSeriesOrder84
using Test
@testset "BesselSeriesOrder84 Tests" begin
    @test isfinite(evaluate_bessel_series_84(0.5))
end
