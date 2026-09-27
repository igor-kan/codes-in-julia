module GeometricSeriesTerm102

export compute_geometric_series_term_102

function compute_geometric_series_term_102(x::Float64)
    return (x ^ 102) / 102.0
end

end

using .GeometricSeriesTerm102
using Test
@testset "GeometricSeriesTerm102 Tests" begin
    @test isapprox(compute_geometric_series_term_102(1.0), 1.0 / 102.0, atol=1e-7)
end
