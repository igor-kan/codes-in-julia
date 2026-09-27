module PowerSeriesTerm85

export compute_power_series_term_85

function compute_power_series_term_85(x::Float64)
    return (x ^ 85) / 85.0
end

end

using .PowerSeriesTerm85
using Test
@testset "PowerSeriesTerm85 Tests" begin
    @test isapprox(compute_power_series_term_85(1.0), 1.0 / 85.0, atol=1e-7)
end
