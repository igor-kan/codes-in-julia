module GeometricSeriesTerm112

export compute_geometric_series_term_112

function compute_geometric_series_term_112(x::Float64)
    return (x ^ 112) / 112.0
end

end

using .GeometricSeriesTerm112
using Test
@testset "GeometricSeriesTerm112 Tests" begin
    @test isapprox(compute_geometric_series_term_112(1.0), 1.0 / 112.0, atol=1e-7)
end
