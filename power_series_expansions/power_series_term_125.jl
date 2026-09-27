module PowerSeriesTerm125

export compute_power_series_term_125

function compute_power_series_term_125(x::Float64)
    return (x ^ 125) / 125.0
end

end

using .PowerSeriesTerm125
using Test
@testset "PowerSeriesTerm125 Tests" begin
    @test isapprox(compute_power_series_term_125(1.0), 1.0 / 125.0, atol=1e-7)
end
