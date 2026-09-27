module GeometricSeriesTerm12

export compute_geometric_series_term_12

function compute_geometric_series_term_12(x::Float64)
    return (x ^ 12) / 12.0
end

end

using .GeometricSeriesTerm12
using Test
@testset "GeometricSeriesTerm12 Tests" begin
    @test isapprox(compute_geometric_series_term_12(1.0), 1.0 / 12.0, atol=1e-7)
end
