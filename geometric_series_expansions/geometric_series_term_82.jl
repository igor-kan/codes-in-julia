module GeometricSeriesTerm82

export compute_geometric_series_term_82

function compute_geometric_series_term_82(x::Float64)
    return (x ^ 82) / 82.0
end

end

using .GeometricSeriesTerm82
using Test
@testset "GeometricSeriesTerm82 Tests" begin
    @test isapprox(compute_geometric_series_term_82(1.0), 1.0 / 82.0, atol=1e-7)
end
