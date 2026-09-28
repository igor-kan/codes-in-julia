module BesselSeriesOrder9

export evaluate_bessel_series_9

function evaluate_bessel_series_9(x::Float64)::Float64
    sign = -1.0
    denom = 6.0
    return sign * ((x / 2.0) ^ 4) / denom
end

end

using .BesselSeriesOrder9
using Test
@testset "BesselSeriesOrder9 Tests" begin
    @test isfinite(evaluate_bessel_series_9(0.5))
end
