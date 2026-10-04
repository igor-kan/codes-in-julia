module ContinuedFracStep1010

export compute_continued_frac_1010

function compute_continued_frac_1010(x::Float64)::Float64
    a = 1.0
    for k in (3):-1:1
        a = Float64(k) + x / (a != 0.0 ? a : 1.0)
    end
    return a
end

end

using .ContinuedFracStep1010
using Test
@testset "ContinuedFracStep1010 Tests" begin
    @test isfinite(compute_continued_frac_1010(0.5))
end
