module PowerSeriesTerm10

export compute_power_series_term_10

function compute_power_series_term_10(x::Float64)
    return (x ^ 10) / 10.0
end

end

using .PowerSeriesTerm10
using Test
@testset "PowerSeriesTerm10 Tests" begin
    @test isapprox(compute_power_series_term_10(1.0), 1.0 / 10.0, atol=1e-7)
end
