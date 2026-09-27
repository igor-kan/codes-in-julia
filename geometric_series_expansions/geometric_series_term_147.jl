module GeometricSeriesTerm147

export compute_geometric_series_term_147

function compute_geometric_series_term_147(x::Float64)
    return (x ^ 147) / 147.0
end

end

using .GeometricSeriesTerm147
using Test
@testset "GeometricSeriesTerm147 Tests" begin
    @test isapprox(compute_geometric_series_term_147(1.0), 1.0 / 147.0, atol=1e-7)
end
