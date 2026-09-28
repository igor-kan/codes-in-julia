module BesselSeriesOrder169

export evaluate_bessel_series_169

function evaluate_bessel_series_169(x::Float64)::Float64
    sign = -1.0
    denom = 2.585201673888498e+22
    return sign * ((x / 2.0) ^ 24) / denom
end

end

using .BesselSeriesOrder169
using Test
@testset "BesselSeriesOrder169 Tests" begin
    @test isfinite(evaluate_bessel_series_169(0.5))
end
