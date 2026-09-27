module PowerSeriesTerm110

export compute_power_series_term_110

function compute_power_series_term_110(x::Float64)
    return (x ^ 110) / 110.0
end

end

using .PowerSeriesTerm110
using Test
@testset "PowerSeriesTerm110 Tests" begin
    @test isapprox(compute_power_series_term_110(1.0), 1.0 / 110.0, atol=1e-7)
end
