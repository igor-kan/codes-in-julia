module PowerSeriesTerm35

export compute_power_series_term_35

function compute_power_series_term_35(x::Float64)
    return (x ^ 35) / 35.0
end

end

using .PowerSeriesTerm35
using Test
@testset "PowerSeriesTerm35 Tests" begin
    @test isapprox(compute_power_series_term_35(1.0), 1.0 / 35.0, atol=1e-7)
end
