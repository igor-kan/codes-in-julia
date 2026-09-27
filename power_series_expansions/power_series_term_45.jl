module PowerSeriesTerm45

export compute_power_series_term_45

function compute_power_series_term_45(x::Float64)
    return (x ^ 45) / 45.0
end

end

using .PowerSeriesTerm45
using Test
@testset "PowerSeriesTerm45 Tests" begin
    @test isapprox(compute_power_series_term_45(1.0), 1.0 / 45.0, atol=1e-7)
end
