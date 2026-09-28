module BesselSeriesOrder89

export evaluate_bessel_series_89

function evaluate_bessel_series_89(x::Float64)::Float64
    sign = -1.0
    denom = 6227020800.0
    return sign * ((x / 2.0) ^ 14) / denom
end

end

using .BesselSeriesOrder89
using Test
@testset "BesselSeriesOrder89 Tests" begin
    @test isfinite(evaluate_bessel_series_89(0.5))
end
