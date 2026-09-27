module PowerSeriesTerm20

export compute_power_series_term_20

function compute_power_series_term_20(x::Float64)
    return (x ^ 20) / 20.0
end

end

using .PowerSeriesTerm20
using Test
@testset "PowerSeriesTerm20 Tests" begin
    @test isapprox(compute_power_series_term_20(1.0), 1.0 / 20.0, atol=1e-7)
end
