module PowerSeriesTerm30

export compute_power_series_term_30

function compute_power_series_term_30(x::Float64)
    return (x ^ 30) / 30.0
end

end

using .PowerSeriesTerm30
using Test
@testset "PowerSeriesTerm30 Tests" begin
    @test isapprox(compute_power_series_term_30(1.0), 1.0 / 30.0, atol=1e-7)
end
