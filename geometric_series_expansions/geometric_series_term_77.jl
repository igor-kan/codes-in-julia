module GeometricSeriesTerm77

export compute_geometric_series_term_77

function compute_geometric_series_term_77(x::Float64)
    return (x ^ 77) / 77.0
end

end

using .GeometricSeriesTerm77
using Test
@testset "GeometricSeriesTerm77 Tests" begin
    @test isapprox(compute_geometric_series_term_77(1.0), 1.0 / 77.0, atol=1e-7)
end
