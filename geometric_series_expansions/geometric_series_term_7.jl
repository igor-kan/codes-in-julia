module GeometricSeriesTerm7

export compute_geometric_series_term_7

function compute_geometric_series_term_7(x::Float64)
    return (x ^ 7) / 7.0
end

end

using .GeometricSeriesTerm7
using Test
@testset "GeometricSeriesTerm7 Tests" begin
    @test isapprox(compute_geometric_series_term_7(1.0), 1.0 / 7.0, atol=1e-7)
end
