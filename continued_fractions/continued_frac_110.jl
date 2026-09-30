module ContinuedFracStep110

export compute_continued_frac_110

function compute_continued_frac_110(x::Float64)::Float64
    a = 1.0
    for k in (3):-1:1
        a = Float64(k) + x / (a != 0.0 ? a : 1.0)
    end
    return a
end

end

using .ContinuedFracStep110
using Test
@testset "ContinuedFracStep110 Tests" begin
    @test isfinite(compute_continued_frac_110(0.5))
end
