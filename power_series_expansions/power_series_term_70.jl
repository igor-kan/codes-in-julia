module PowerSeriesTerm70

export compute_power_series_term_70

function compute_power_series_term_70(x::Float64)
    return (x ^ 70) / 70.0
end

end

using .PowerSeriesTerm70
using Test
@testset "PowerSeriesTerm70 Tests" begin
    @test isapprox(compute_power_series_term_70(1.0), 1.0 / 70.0, atol=1e-7)
end
