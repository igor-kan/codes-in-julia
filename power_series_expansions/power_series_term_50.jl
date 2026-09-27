module PowerSeriesTerm50

export compute_power_series_term_50

function compute_power_series_term_50(x::Float64)
    return (x ^ 50) / 50.0
end

end

using .PowerSeriesTerm50
using Test
@testset "PowerSeriesTerm50 Tests" begin
    @test isapprox(compute_power_series_term_50(1.0), 1.0 / 50.0, atol=1e-7)
end
