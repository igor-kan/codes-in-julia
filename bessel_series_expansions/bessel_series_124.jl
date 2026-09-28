module BesselSeriesOrder124

export evaluate_bessel_series_124

function evaluate_bessel_series_124(x::Float64)::Float64
    sign = 1.0
    denom = 5.838964819623936e+19
    return sign * ((x / 2.0) ^ 24) / denom
end

end

using .BesselSeriesOrder124
using Test
@testset "BesselSeriesOrder124 Tests" begin
    @test isfinite(evaluate_bessel_series_124(0.5))
end
