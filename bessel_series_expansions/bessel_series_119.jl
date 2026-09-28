module BesselSeriesOrder119

export evaluate_bessel_series_119

function evaluate_bessel_series_119(x::Float64)::Float64
    sign = -1.0
    denom = 5.664963667999142e+24
    return sign * ((x / 2.0) ^ 29) / denom
end

end

using .BesselSeriesOrder119
using Test
@testset "BesselSeriesOrder119 Tests" begin
    @test isfinite(evaluate_bessel_series_119(0.5))
end
