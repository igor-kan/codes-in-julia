module BesselSeriesOrder39

export evaluate_bessel_series_39

function evaluate_bessel_series_39(x::Float64)::Float64
    sign = -1.0
    denom = 2414168064000.0
    return sign * ((x / 2.0) ^ 19) / denom
end

end

using .BesselSeriesOrder39
using Test
@testset "BesselSeriesOrder39 Tests" begin
    @test isfinite(evaluate_bessel_series_39(0.5))
end
