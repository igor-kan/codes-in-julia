module PowerSeriesTerm115

export compute_power_series_term_115

function compute_power_series_term_115(x::Float64)
    return (x ^ 115) / 115.0
end

end

using .PowerSeriesTerm115
using Test
@testset "PowerSeriesTerm115 Tests" begin
    @test isapprox(compute_power_series_term_115(1.0), 1.0 / 115.0, atol=1e-7)
end
