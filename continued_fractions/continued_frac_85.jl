module ContinuedFracStep85

export compute_continued_frac_85

function compute_continued_frac_85(x::Float64)::Float64
    a = 1.0
    for k in (2):-1:1
        a = Float64(k) + x / (a != 0.0 ? a : 1.0)
    end
    return a
end

end

using .ContinuedFracStep85
using Test
@testset "ContinuedFracStep85 Tests" begin
    @test isfinite(compute_continued_frac_85(0.5))
end
