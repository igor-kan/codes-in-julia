module BesselSeriesOrder154

export evaluate_bessel_series_154

function evaluate_bessel_series_154(x::Float64)::Float64
    sign = 1.0
    denom = 2.2480014555552154e+21
    return sign * ((x / 2.0) ^ 24) / denom
end

end

using .BesselSeriesOrder154
using Test
@testset "BesselSeriesOrder154 Tests" begin
    @test isfinite(evaluate_bessel_series_154(0.5))
end
