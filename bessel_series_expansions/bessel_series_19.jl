module BesselSeriesOrder19

export evaluate_bessel_series_19

function evaluate_bessel_series_19(x::Float64)::Float64
    sign = -1.0
    denom = 4320.0
    return sign * ((x / 2.0) ^ 9) / denom
end

end

using .BesselSeriesOrder19
using Test
@testset "BesselSeriesOrder19 Tests" begin
    @test isfinite(evaluate_bessel_series_19(0.5))
end
