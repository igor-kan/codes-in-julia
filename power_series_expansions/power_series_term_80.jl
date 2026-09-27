module PowerSeriesTerm80

export compute_power_series_term_80

function compute_power_series_term_80(x::Float64)
    return (x ^ 80) / 80.0
end

end

using .PowerSeriesTerm80
using Test
@testset "PowerSeriesTerm80 Tests" begin
    @test isapprox(compute_power_series_term_80(1.0), 1.0 / 80.0, atol=1e-7)
end
