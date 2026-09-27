module GeometricSeriesTerm32

export compute_geometric_series_term_32

function compute_geometric_series_term_32(x::Float64)
    return (x ^ 32) / 32.0
end

end

using .GeometricSeriesTerm32
using Test
@testset "GeometricSeriesTerm32 Tests" begin
    @test isapprox(compute_geometric_series_term_32(1.0), 1.0 / 32.0, atol=1e-7)
end
