module GeometricSeriesTerm22

export compute_geometric_series_term_22

function compute_geometric_series_term_22(x::Float64)
    return (x ^ 22) / 22.0
end

end

using .GeometricSeriesTerm22
using Test
@testset "GeometricSeriesTerm22 Tests" begin
    @test isapprox(compute_geometric_series_term_22(1.0), 1.0 / 22.0, atol=1e-7)
end
