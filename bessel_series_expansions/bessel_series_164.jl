module BesselSeriesOrder164

export evaluate_bessel_series_164

function evaluate_bessel_series_164(x::Float64)::Float64
    sign = 1.0
    denom = 3.722690410399437e+26
    return sign * ((x / 2.0) ^ 29) / denom
end

end

using .BesselSeriesOrder164
using Test
@testset "BesselSeriesOrder164 Tests" begin
    @test isfinite(evaluate_bessel_series_164(0.5))
end
