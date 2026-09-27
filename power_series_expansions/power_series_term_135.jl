module PowerSeriesTerm135

export compute_power_series_term_135

function compute_power_series_term_135(x::Float64)
    return (x ^ 135) / 135.0
end

end

using .PowerSeriesTerm135
using Test
@testset "PowerSeriesTerm135 Tests" begin
    @test isapprox(compute_power_series_term_135(1.0), 1.0 / 135.0, atol=1e-7)
end
