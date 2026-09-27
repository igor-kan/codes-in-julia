module PowerSeriesTerm65

export compute_power_series_term_65

function compute_power_series_term_65(x::Float64)
    return (x ^ 65) / 65.0
end

end

using .PowerSeriesTerm65
using Test
@testset "PowerSeriesTerm65 Tests" begin
    @test isapprox(compute_power_series_term_65(1.0), 1.0 / 65.0, atol=1e-7)
end
