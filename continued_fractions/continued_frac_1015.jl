module ContinuedFracStep1015

export compute_continued_frac_1015

function compute_continued_frac_1015(x::Float64)::Float64
    a = 1.0
    for k in (2):-1:1
        a = Float64(k) + x / (a != 0.0 ? a : 1.0)
    end
    return a
end

end

using .ContinuedFracStep1015
using Test
@testset "ContinuedFracStep1015 Tests" begin
    @test isfinite(compute_continued_frac_1015(0.5))
end
