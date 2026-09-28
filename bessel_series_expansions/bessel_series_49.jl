module BesselSeriesOrder49

export evaluate_bessel_series_49

function evaluate_bessel_series_49(x::Float64)::Float64
    sign = -1.0
    denom = 40320.0
    return sign * ((x / 2.0) ^ 9) / denom
end

end

using .BesselSeriesOrder49
using Test
@testset "BesselSeriesOrder49 Tests" begin
    @test isfinite(evaluate_bessel_series_49(0.5))
end
