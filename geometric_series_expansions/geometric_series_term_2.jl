module GeometricSeriesTerm2

export compute_geometric_series_term_2

function compute_geometric_series_term_2(x::Float64)
    return (x ^ 2) / 2.0
end

end

using .GeometricSeriesTerm2
using Test
@testset "GeometricSeriesTerm2 Tests" begin
    @test isapprox(compute_geometric_series_term_2(1.0), 1.0 / 2.0, atol=1e-7)
end
