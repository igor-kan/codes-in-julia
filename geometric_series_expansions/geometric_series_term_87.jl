module GeometricSeriesTerm87

export compute_geometric_series_term_87

function compute_geometric_series_term_87(x::Float64)
    return (x ^ 87) / 87.0
end

end

using .GeometricSeriesTerm87
using Test
@testset "GeometricSeriesTerm87 Tests" begin
    @test isapprox(compute_geometric_series_term_87(1.0), 1.0 / 87.0, atol=1e-7)
end
