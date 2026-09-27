module PowerSeriesTerm150

export compute_power_series_term_150

function compute_power_series_term_150(x::Float64)
    return (x ^ 150) / 150.0
end

end

using .PowerSeriesTerm150
using Test
@testset "PowerSeriesTerm150 Tests" begin
    @test isapprox(compute_power_series_term_150(1.0), 1.0 / 150.0, atol=1e-7)
end
