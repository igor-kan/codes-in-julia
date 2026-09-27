module GeometricSeriesTerm72

export compute_geometric_series_term_72

function compute_geometric_series_term_72(x::Float64)
    return (x ^ 72) / 72.0
end

end

using .GeometricSeriesTerm72
using Test
@testset "GeometricSeriesTerm72 Tests" begin
    @test isapprox(compute_geometric_series_term_72(1.0), 1.0 / 72.0, atol=1e-7)
end
