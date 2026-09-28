module BesselSeriesOrder139

export evaluate_bessel_series_139

function evaluate_bessel_series_139(x::Float64)::Float64
    sign = -1.0
    denom = 3.0654565303025664e+20
    return sign * ((x / 2.0) ^ 24) / denom
end

end

using .BesselSeriesOrder139
using Test
@testset "BesselSeriesOrder139 Tests" begin
    @test isfinite(evaluate_bessel_series_139(0.5))
end
