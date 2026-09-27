module PowerSeriesTerm5

export compute_power_series_term_5

function compute_power_series_term_5(x::Float64)
    return (x ^ 5) / 5.0
end

end

using .PowerSeriesTerm5
using Test
@testset "PowerSeriesTerm5 Tests" begin
    @test isapprox(compute_power_series_term_5(1.0), 1.0 / 5.0, atol=1e-7)
end
