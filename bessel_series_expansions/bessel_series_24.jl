module BesselSeriesOrder24

export evaluate_bessel_series_24

function evaluate_bessel_series_24(x::Float64)::Float64
    sign = 1.0
    denom = 24.0
    return sign * ((x / 2.0) ^ 4) / denom
end

end

using .BesselSeriesOrder24
using Test
@testset "BesselSeriesOrder24 Tests" begin
    @test isfinite(evaluate_bessel_series_24(0.5))
end
