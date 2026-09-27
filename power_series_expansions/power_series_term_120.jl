module PowerSeriesTerm120

export compute_power_series_term_120

function compute_power_series_term_120(x::Float64)
    return (x ^ 120) / 120.0
end

end

using .PowerSeriesTerm120
using Test
@testset "PowerSeriesTerm120 Tests" begin
    @test isapprox(compute_power_series_term_120(1.0), 1.0 / 120.0, atol=1e-7)
end
