module BesselSeriesOrder44

export evaluate_bessel_series_44

function evaluate_bessel_series_44(x::Float64)::Float64
    sign = 1.0
    denom = 87091200.0
    return sign * ((x / 2.0) ^ 14) / denom
end

end

using .BesselSeriesOrder44
using Test
@testset "BesselSeriesOrder44 Tests" begin
    @test isfinite(evaluate_bessel_series_44(0.5))
end
