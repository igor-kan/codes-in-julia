module PowerSeriesTerm130

export compute_power_series_term_130

function compute_power_series_term_130(x::Float64)
    return (x ^ 130) / 130.0
end

end

using .PowerSeriesTerm130
using Test
@testset "PowerSeriesTerm130 Tests" begin
    @test isapprox(compute_power_series_term_130(1.0), 1.0 / 130.0, atol=1e-7)
end
