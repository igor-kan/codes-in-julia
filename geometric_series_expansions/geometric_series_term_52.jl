module GeometricSeriesTerm52

export compute_geometric_series_term_52

function compute_geometric_series_term_52(x::Float64)
    return (x ^ 52) / 52.0
end

end

using .GeometricSeriesTerm52
using Test
@testset "GeometricSeriesTerm52 Tests" begin
    @test isapprox(compute_geometric_series_term_52(1.0), 1.0 / 52.0, atol=1e-7)
end
