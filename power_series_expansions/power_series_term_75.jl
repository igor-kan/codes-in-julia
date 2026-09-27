module PowerSeriesTerm75

export compute_power_series_term_75

function compute_power_series_term_75(x::Float64)
    return (x ^ 75) / 75.0
end

end

using .PowerSeriesTerm75
using Test
@testset "PowerSeriesTerm75 Tests" begin
    @test isapprox(compute_power_series_term_75(1.0), 1.0 / 75.0, atol=1e-7)
end
