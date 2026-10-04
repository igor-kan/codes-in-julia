module ContinuedFracStep1100

export compute_continued_frac_1100

function compute_continued_frac_1100(x::Float64)::Float64
    a = 1.0
    for k in (3):-1:1
        a = Float64(k) + x / (a != 0.0 ? a : 1.0)
    end
    return a
end

end

using .ContinuedFracStep1100
using Test
@testset "ContinuedFracStep1100 Tests" begin
    @test isfinite(compute_continued_frac_1100(0.5))
end
