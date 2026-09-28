module BesselSeriesOrder74

export evaluate_bessel_series_74

function evaluate_bessel_series_74(x::Float64)::Float64
    sign = 1.0
    denom = 958003200.0
    return sign * ((x / 2.0) ^ 14) / denom
end

end

using .BesselSeriesOrder74
using Test
@testset "BesselSeriesOrder74 Tests" begin
    @test isfinite(evaluate_bessel_series_74(0.5))
end
