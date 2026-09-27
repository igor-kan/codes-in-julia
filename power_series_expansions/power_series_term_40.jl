module PowerSeriesTerm40

export compute_power_series_term_40

function compute_power_series_term_40(x::Float64)
    return (x ^ 40) / 40.0
end

end

using .PowerSeriesTerm40
using Test
@testset "PowerSeriesTerm40 Tests" begin
    @test isapprox(compute_power_series_term_40(1.0), 1.0 / 40.0, atol=1e-7)
end
