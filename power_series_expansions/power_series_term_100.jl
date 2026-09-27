module PowerSeriesTerm100

export compute_power_series_term_100

function compute_power_series_term_100(x::Float64)
    return (x ^ 100) / 100.0
end

end

using .PowerSeriesTerm100
using Test
@testset "PowerSeriesTerm100 Tests" begin
    @test isapprox(compute_power_series_term_100(1.0), 1.0 / 100.0, atol=1e-7)
end
