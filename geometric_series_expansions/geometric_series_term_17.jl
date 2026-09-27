module GeometricSeriesTerm17

export compute_geometric_series_term_17

function compute_geometric_series_term_17(x::Float64)
    return (x ^ 17) / 17.0
end

end

using .GeometricSeriesTerm17
using Test
@testset "GeometricSeriesTerm17 Tests" begin
    @test isapprox(compute_geometric_series_term_17(1.0), 1.0 / 17.0, atol=1e-7)
end
