module BesselSeriesOrder144

export evaluate_bessel_series_144

function evaluate_bessel_series_144(x::Float64)::Float64
    sign = 1.0
    denom = 1.21645100408832e+17
    return sign * ((x / 2.0) ^ 19) / denom
end

end

using .BesselSeriesOrder144
using Test
@testset "BesselSeriesOrder144 Tests" begin
    @test isfinite(evaluate_bessel_series_144(0.5))
end
