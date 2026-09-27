module GeometricSeriesTerm62

export compute_geometric_series_term_62

function compute_geometric_series_term_62(x::Float64)
    return (x ^ 62) / 62.0
end

end

using .GeometricSeriesTerm62
using Test
@testset "GeometricSeriesTerm62 Tests" begin
    @test isapprox(compute_geometric_series_term_62(1.0), 1.0 / 62.0, atol=1e-7)
end
