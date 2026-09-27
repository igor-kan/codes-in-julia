module GeometricSeriesTerm127

export compute_geometric_series_term_127

function compute_geometric_series_term_127(x::Float64)
    return (x ^ 127) / 127.0
end

end

using .GeometricSeriesTerm127
using Test
@testset "GeometricSeriesTerm127 Tests" begin
    @test isapprox(compute_geometric_series_term_127(1.0), 1.0 / 127.0, atol=1e-7)
end
