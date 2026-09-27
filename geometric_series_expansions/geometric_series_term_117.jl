module GeometricSeriesTerm117

export compute_geometric_series_term_117

function compute_geometric_series_term_117(x::Float64)
    return (x ^ 117) / 117.0
end

end

using .GeometricSeriesTerm117
using Test
@testset "GeometricSeriesTerm117 Tests" begin
    @test isapprox(compute_geometric_series_term_117(1.0), 1.0 / 117.0, atol=1e-7)
end
