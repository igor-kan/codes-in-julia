module BesselSeriesOrder129

export evaluate_bessel_series_129

function evaluate_bessel_series_129(x::Float64)::Float64
    sign = -1.0
    denom = 6402373705728000.0
    return sign * ((x / 2.0) ^ 19) / denom
end

end

using .BesselSeriesOrder129
using Test
@testset "BesselSeriesOrder129 Tests" begin
    @test isfinite(evaluate_bessel_series_129(0.5))
end
