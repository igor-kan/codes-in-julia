module ContinuedFracStep1105

export compute_continued_frac_1105

function compute_continued_frac_1105(x::Float64)::Float64
    a = 1.0
    for k in (2):-1:1
        a = Float64(k) + x / (a != 0.0 ? a : 1.0)
    end
    return a
end

end

using .ContinuedFracStep1105
using Test
@testset "ContinuedFracStep1105 Tests" begin
    @test isfinite(compute_continued_frac_1105(0.5))
end
