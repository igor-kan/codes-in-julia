module BesselSeriesOrder4

export evaluate_bessel_series_4

function evaluate_bessel_series_4(x::Float64)::Float64
    sign = 1.0
    denom = 2880.0
    return sign * ((x / 2.0) ^ 9) / denom
end

end

using .BesselSeriesOrder4
using Test
@testset "BesselSeriesOrder4 Tests" begin
    @test isfinite(evaluate_bessel_series_4(0.5))
end
