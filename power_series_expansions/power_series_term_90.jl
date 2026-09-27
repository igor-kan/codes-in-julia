module PowerSeriesTerm90

export compute_power_series_term_90

function compute_power_series_term_90(x::Float64)
    return (x ^ 90) / 90.0
end

end

using .PowerSeriesTerm90
using Test
@testset "PowerSeriesTerm90 Tests" begin
    @test isapprox(compute_power_series_term_90(1.0), 1.0 / 90.0, atol=1e-7)
end
