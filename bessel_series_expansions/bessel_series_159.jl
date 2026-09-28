module BesselSeriesOrder159

export evaluate_bessel_series_159

function evaluate_bessel_series_159(x::Float64)::Float64
    sign = -1.0
    denom = 5.487990203010849e+31
    return sign * ((x / 2.0) ^ 34) / denom
end

end

using .BesselSeriesOrder159
using Test
@testset "BesselSeriesOrder159 Tests" begin
    @test isfinite(evaluate_bessel_series_159(0.5))
end
