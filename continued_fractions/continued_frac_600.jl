module ContinuedFracStep600

export compute_continued_frac_600

function compute_continued_frac_600(x::Float64)::Float64
    a = 1.0
    for k in (1):-1:1
        a = Float64(k) + x / (a != 0.0 ? a : 1.0)
    end
    return a
end

end

using .ContinuedFracStep600
using Test
@testset "ContinuedFracStep600 Tests" begin
    @test isfinite(compute_continued_frac_600(0.5))
end
