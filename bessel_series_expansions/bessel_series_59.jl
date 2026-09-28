module BesselSeriesOrder59

export evaluate_bessel_series_59

function evaluate_bessel_series_59(x::Float64)::Float64
    sign = -1.0
    denom = 239500800.0
    return sign * ((x / 2.0) ^ 14) / denom
end

end

using .BesselSeriesOrder59
using Test
@testset "BesselSeriesOrder59 Tests" begin
    @test isfinite(evaluate_bessel_series_59(0.5))
end
