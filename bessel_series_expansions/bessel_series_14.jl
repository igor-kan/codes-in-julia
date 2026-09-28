module BesselSeriesOrder14

export evaluate_bessel_series_14

function evaluate_bessel_series_14(x::Float64)::Float64
    sign = 1.0
    denom = 29030400.0
    return sign * ((x / 2.0) ^ 14) / denom
end

end

using .BesselSeriesOrder14
using Test
@testset "BesselSeriesOrder14 Tests" begin
    @test isfinite(evaluate_bessel_series_14(0.5))
end
