module GeometricSeriesTerm47

export compute_geometric_series_term_47

function compute_geometric_series_term_47(x::Float64)
    return (x ^ 47) / 47.0
end

end

using .GeometricSeriesTerm47
using Test
@testset "GeometricSeriesTerm47 Tests" begin
    @test isapprox(compute_geometric_series_term_47(1.0), 1.0 / 47.0, atol=1e-7)
end
