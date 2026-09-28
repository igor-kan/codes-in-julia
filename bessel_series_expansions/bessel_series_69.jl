module BesselSeriesOrder69

export evaluate_bessel_series_69

function evaluate_bessel_series_69(x::Float64)::Float64
    sign = -1.0
    denom = 10461394944000.0
    return sign * ((x / 2.0) ^ 19) / denom
end

end

using .BesselSeriesOrder69
using Test
@testset "BesselSeriesOrder69 Tests" begin
    @test isfinite(evaluate_bessel_series_69(0.5))
end
