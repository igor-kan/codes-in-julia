module GeometricSeriesTerm97

export compute_geometric_series_term_97

function compute_geometric_series_term_97(x::Float64)
    return (x ^ 97) / 97.0
end

end

using .GeometricSeriesTerm97
using Test
@testset "GeometricSeriesTerm97 Tests" begin
    @test isapprox(compute_geometric_series_term_97(1.0), 1.0 / 97.0, atol=1e-7)
end
