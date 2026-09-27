module GeometricSeriesTerm132

export compute_geometric_series_term_132

function compute_geometric_series_term_132(x::Float64)
    return (x ^ 132) / 132.0
end

end

using .GeometricSeriesTerm132
using Test
@testset "GeometricSeriesTerm132 Tests" begin
    @test isapprox(compute_geometric_series_term_132(1.0), 1.0 / 132.0, atol=1e-7)
end
