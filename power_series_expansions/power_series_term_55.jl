module PowerSeriesTerm55

export compute_power_series_term_55

function compute_power_series_term_55(x::Float64)
    return (x ^ 55) / 55.0
end

end

using .PowerSeriesTerm55
using Test
@testset "PowerSeriesTerm55 Tests" begin
    @test isapprox(compute_power_series_term_55(1.0), 1.0 / 55.0, atol=1e-7)
end
