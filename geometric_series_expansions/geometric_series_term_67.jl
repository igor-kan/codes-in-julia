module GeometricSeriesTerm67

export compute_geometric_series_term_67

function compute_geometric_series_term_67(x::Float64)
    return (x ^ 67) / 67.0
end

end

using .GeometricSeriesTerm67
using Test
@testset "GeometricSeriesTerm67 Tests" begin
    @test isapprox(compute_geometric_series_term_67(1.0), 1.0 / 67.0, atol=1e-7)
end
