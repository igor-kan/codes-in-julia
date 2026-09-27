module GeometricSeriesTerm122

export compute_geometric_series_term_122

function compute_geometric_series_term_122(x::Float64)
    return (x ^ 122) / 122.0
end

end

using .GeometricSeriesTerm122
using Test
@testset "GeometricSeriesTerm122 Tests" begin
    @test isapprox(compute_geometric_series_term_122(1.0), 1.0 / 122.0, atol=1e-7)
end
