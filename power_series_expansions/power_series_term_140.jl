module PowerSeriesTerm140

export compute_power_series_term_140

function compute_power_series_term_140(x::Float64)
    return (x ^ 140) / 140.0
end

end

using .PowerSeriesTerm140
using Test
@testset "PowerSeriesTerm140 Tests" begin
    @test isapprox(compute_power_series_term_140(1.0), 1.0 / 140.0, atol=1e-7)
end
