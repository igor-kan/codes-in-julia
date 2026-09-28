module BesselSeriesOrder134

export evaluate_bessel_series_134

function evaluate_bessel_series_134(x::Float64)::Float64
    sign = 1.0
    denom = 1.8613452051997183e+25
    return sign * ((x / 2.0) ^ 29) / denom
end

end

using .BesselSeriesOrder134
using Test
@testset "BesselSeriesOrder134 Tests" begin
    @test isfinite(evaluate_bessel_series_134(0.5))
end
