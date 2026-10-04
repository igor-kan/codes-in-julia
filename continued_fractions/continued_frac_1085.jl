module ContinuedFracStep1085

export compute_continued_frac_1085

function compute_continued_frac_1085(x::Float64)::Float64
    a = 1.0
    for k in (6):-1:1
        a = Float64(k) + x / (a != 0.0 ? a : 1.0)
    end
    return a
end

end

using .ContinuedFracStep1085
using Test
@testset "ContinuedFracStep1085 Tests" begin
    @test isfinite(compute_continued_frac_1085(0.5))
end
