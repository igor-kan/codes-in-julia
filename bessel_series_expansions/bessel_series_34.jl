module BesselSeriesOrder34

export evaluate_bessel_series_34

function evaluate_bessel_series_34(x::Float64)::Float64
    sign = 1.0
    denom = 10080.0
    return sign * ((x / 2.0) ^ 9) / denom
end

end

using .BesselSeriesOrder34
using Test
@testset "BesselSeriesOrder34 Tests" begin
    @test isfinite(evaluate_bessel_series_34(0.5))
end
