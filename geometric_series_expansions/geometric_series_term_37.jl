module GeometricSeriesTerm37

export compute_geometric_series_term_37

function compute_geometric_series_term_37(x::Float64)
    return (x ^ 37) / 37.0
end

end

using .GeometricSeriesTerm37
using Test
@testset "GeometricSeriesTerm37 Tests" begin
    @test isapprox(compute_geometric_series_term_37(1.0), 1.0 / 37.0, atol=1e-7)
end
