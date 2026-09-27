module PowerSeriesTerm145

export compute_power_series_term_145

function compute_power_series_term_145(x::Float64)
    return (x ^ 145) / 145.0
end

end

using .PowerSeriesTerm145
using Test
@testset "PowerSeriesTerm145 Tests" begin
    @test isapprox(compute_power_series_term_145(1.0), 1.0 / 145.0, atol=1e-7)
end
