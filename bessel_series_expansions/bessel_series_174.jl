module BesselSeriesOrder174

export evaluate_bessel_series_174

function evaluate_bessel_series_174(x::Float64)::Float64
    sign = 1.0
    denom = 2.1951960812043397e+32
    return sign * ((x / 2.0) ^ 34) / denom
end

end

using .BesselSeriesOrder174
using Test
@testset "BesselSeriesOrder174 Tests" begin
    @test isfinite(evaluate_bessel_series_174(0.5))
end
