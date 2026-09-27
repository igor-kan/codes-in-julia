module GeometricSeriesTerm137

export compute_geometric_series_term_137

function compute_geometric_series_term_137(x::Float64)
    return (x ^ 137) / 137.0
end

end

using .GeometricSeriesTerm137
using Test
@testset "GeometricSeriesTerm137 Tests" begin
    @test isapprox(compute_geometric_series_term_137(1.0), 1.0 / 137.0, atol=1e-7)
end
