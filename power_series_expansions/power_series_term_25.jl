module PowerSeriesTerm25

export compute_power_series_term_25

function compute_power_series_term_25(x::Float64)
    return (x ^ 25) / 25.0
end

end

using .PowerSeriesTerm25
using Test
@testset "PowerSeriesTerm25 Tests" begin
    @test isapprox(compute_power_series_term_25(1.0), 1.0 / 25.0, atol=1e-7)
end
