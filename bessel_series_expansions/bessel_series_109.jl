module BesselSeriesOrder109

export evaluate_bessel_series_109

function evaluate_bessel_series_109(x::Float64)::Float64
    sign = -1.0
    denom = 1.459741204905984e+19
    return sign * ((x / 2.0) ^ 24) / denom
end

end

using .BesselSeriesOrder109
using Test
@testset "BesselSeriesOrder109 Tests" begin
    @test isfinite(evaluate_bessel_series_109(0.5))
end
