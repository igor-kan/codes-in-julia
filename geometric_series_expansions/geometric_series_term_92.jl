module GeometricSeriesTerm92

export compute_geometric_series_term_92

function compute_geometric_series_term_92(x::Float64)
    return (x ^ 92) / 92.0
end

end

using .GeometricSeriesTerm92
using Test
@testset "GeometricSeriesTerm92 Tests" begin
    @test isapprox(compute_geometric_series_term_92(1.0), 1.0 / 92.0, atol=1e-7)
end
