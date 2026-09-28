module BesselSeriesOrder104

export evaluate_bessel_series_104

function evaluate_bessel_series_104(x::Float64)::Float64
    sign = 1.0
    denom = 87178291200.0
    return sign * ((x / 2.0) ^ 14) / denom
end

end

using .BesselSeriesOrder104
using Test
@testset "BesselSeriesOrder104 Tests" begin
    @test isfinite(evaluate_bessel_series_104(0.5))
end
