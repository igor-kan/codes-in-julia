module PowerSeriesTerm95

export compute_power_series_term_95

function compute_power_series_term_95(x::Float64)
    return (x ^ 95) / 95.0
end

end

using .PowerSeriesTerm95
using Test
@testset "PowerSeriesTerm95 Tests" begin
    @test isapprox(compute_power_series_term_95(1.0), 1.0 / 95.0, atol=1e-7)
end
