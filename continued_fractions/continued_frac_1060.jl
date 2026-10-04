module ContinuedFracStep1060

export compute_continued_frac_1060

function compute_continued_frac_1060(x::Float64)::Float64
    a = 1.0
    for k in (5):-1:1
        a = Float64(k) + x / (a != 0.0 ? a : 1.0)
    end
    return a
end

end

using .ContinuedFracStep1060
using Test
@testset "ContinuedFracStep1060 Tests" begin
    @test isfinite(compute_continued_frac_1060(0.5))
end
