module ContinuedFracStep1090

export compute_continued_frac_1090

function compute_continued_frac_1090(x::Float64)::Float64
    a = 1.0
    for k in (5):-1:1
        a = Float64(k) + x / (a != 0.0 ? a : 1.0)
    end
    return a
end

end

using .ContinuedFracStep1090
using Test
@testset "ContinuedFracStep1090 Tests" begin
    @test isfinite(compute_continued_frac_1090(0.5))
end
