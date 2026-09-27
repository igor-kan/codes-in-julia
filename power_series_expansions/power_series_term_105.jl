module PowerSeriesTerm105

export compute_power_series_term_105

function compute_power_series_term_105(x::Float64)
    return (x ^ 105) / 105.0
end

end

using .PowerSeriesTerm105
using Test
@testset "PowerSeriesTerm105 Tests" begin
    @test isapprox(compute_power_series_term_105(1.0), 1.0 / 105.0, atol=1e-7)
end
