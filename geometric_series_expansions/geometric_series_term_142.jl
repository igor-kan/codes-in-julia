module GeometricSeriesTerm142

export compute_geometric_series_term_142

function compute_geometric_series_term_142(x::Float64)
    return (x ^ 142) / 142.0
end

end

using .GeometricSeriesTerm142
using Test
@testset "GeometricSeriesTerm142 Tests" begin
    @test isapprox(compute_geometric_series_term_142(1.0), 1.0 / 142.0, atol=1e-7)
end
