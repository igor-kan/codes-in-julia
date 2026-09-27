module GeometricSeriesTerm42

export compute_geometric_series_term_42

function compute_geometric_series_term_42(x::Float64)
    return (x ^ 42) / 42.0
end

end

using .GeometricSeriesTerm42
using Test
@testset "GeometricSeriesTerm42 Tests" begin
    @test isapprox(compute_geometric_series_term_42(1.0), 1.0 / 42.0, atol=1e-7)
end
