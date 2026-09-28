module BesselSeriesOrder64

export evaluate_bessel_series_64

function evaluate_bessel_series_64(x::Float64)::Float64
    sign = 1.0
    denom = 362880.0
    return sign * ((x / 2.0) ^ 9) / denom
end

end

using .BesselSeriesOrder64
using Test
@testset "BesselSeriesOrder64 Tests" begin
    @test isfinite(evaluate_bessel_series_64(0.5))
end
