module PowerSeriesTerm60

export compute_power_series_term_60

function compute_power_series_term_60(x::Float64)
    return (x ^ 60) / 60.0
end

end

using .PowerSeriesTerm60
using Test
@testset "PowerSeriesTerm60 Tests" begin
    @test isapprox(compute_power_series_term_60(1.0), 1.0 / 60.0, atol=1e-7)
end
