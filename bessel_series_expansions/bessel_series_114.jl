module BesselSeriesOrder114

export evaluate_bessel_series_114

function evaluate_bessel_series_114(x::Float64)::Float64
    sign = 1.0
    denom = 711374856192000.0
    return sign * ((x / 2.0) ^ 19) / denom
end

end

using .BesselSeriesOrder114
using Test
@testset "BesselSeriesOrder114 Tests" begin
    @test isfinite(evaluate_bessel_series_114(0.5))
end
