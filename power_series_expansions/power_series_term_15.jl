module PowerSeriesTerm15

export compute_power_series_term_15

function compute_power_series_term_15(x::Float64)
    return (x ^ 15) / 15.0
end

end

using .PowerSeriesTerm15
using Test
@testset "PowerSeriesTerm15 Tests" begin
    @test isapprox(compute_power_series_term_15(1.0), 1.0 / 15.0, atol=1e-7)
end
