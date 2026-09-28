module BesselSeriesOrder99

export evaluate_bessel_series_99

function evaluate_bessel_series_99(x::Float64)::Float64
    sign = -1.0
    denom = 125536739328000.0
    return sign * ((x / 2.0) ^ 19) / denom
end

end

using .BesselSeriesOrder99
using Test
@testset "BesselSeriesOrder99 Tests" begin
    @test isfinite(evaluate_bessel_series_99(0.5))
end
