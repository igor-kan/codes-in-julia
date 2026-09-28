module BesselSeriesOrder29

export evaluate_bessel_series_29

function evaluate_bessel_series_29(x::Float64)::Float64
    sign = -1.0
    denom = 43545600.0
    return sign * ((x / 2.0) ^ 14) / denom
end

end

using .BesselSeriesOrder29
using Test
@testset "BesselSeriesOrder29 Tests" begin
    @test isfinite(evaluate_bessel_series_29(0.5))
end
