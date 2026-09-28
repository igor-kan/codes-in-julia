module BesselSeriesOrder54

export evaluate_bessel_series_54

function evaluate_bessel_series_54(x::Float64)::Float64
    sign = 1.0
    denom = 4483454976000.0
    return sign * ((x / 2.0) ^ 19) / denom
end

end

using .BesselSeriesOrder54
using Test
@testset "BesselSeriesOrder54 Tests" begin
    @test isfinite(evaluate_bessel_series_54(0.5))
end
