module BesselSeriesOrder149

export evaluate_bessel_series_149

function evaluate_bessel_series_149(x::Float64)::Float64
    sign = -1.0
    denom = 7.445380820798873e+25
    return sign * ((x / 2.0) ^ 29) / denom
end

end

using .BesselSeriesOrder149
using Test
@testset "BesselSeriesOrder149 Tests" begin
    @test isfinite(evaluate_bessel_series_149(0.5))
end
