module GeometricSeriesTerm107

export compute_geometric_series_term_107

function compute_geometric_series_term_107(x::Float64)
    return (x ^ 107) / 107.0
end

end

using .GeometricSeriesTerm107
using Test
@testset "GeometricSeriesTerm107 Tests" begin
    @test isapprox(compute_geometric_series_term_107(1.0), 1.0 / 107.0, atol=1e-7)
end
