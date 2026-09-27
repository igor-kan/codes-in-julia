module GeometricSeriesTerm57

export compute_geometric_series_term_57

function compute_geometric_series_term_57(x::Float64)
    return (x ^ 57) / 57.0
end

end

using .GeometricSeriesTerm57
using Test
@testset "GeometricSeriesTerm57 Tests" begin
    @test isapprox(compute_geometric_series_term_57(1.0), 1.0 / 57.0, atol=1e-7)
end
