module GeometricSeriesTerm27

export compute_geometric_series_term_27

function compute_geometric_series_term_27(x::Float64)
    return (x ^ 27) / 27.0
end

end

using .GeometricSeriesTerm27
using Test
@testset "GeometricSeriesTerm27 Tests" begin
    @test isapprox(compute_geometric_series_term_27(1.0), 1.0 / 27.0, atol=1e-7)
end
