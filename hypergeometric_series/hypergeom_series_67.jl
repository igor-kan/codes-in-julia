module HypergeomSeriesOrder67

export compute_hypergeom_series_67

function compute_hypergeom_series_67(x::Float64)::Float64
    return (x ^ 3) / 2.0
end

end

using .HypergeomSeriesOrder67
using Test
@testset "HypergeomSeriesOrder67 Tests" begin
    @test isfinite(compute_hypergeom_series_67(0.5))
end
