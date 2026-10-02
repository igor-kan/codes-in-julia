module ContinuedFracStep590

export compute_continued_frac_590

function compute_continued_frac_590(x::Float64)::Float64
    a = 1.0
    for k in (3):-1:1
        a = Float64(k) + x / (a != 0.0 ? a : 1.0)
    end
    return a
end

end

using .ContinuedFracStep590
using Test
@testset "ContinuedFracStep590 Tests" begin
    @test isfinite(compute_continued_frac_590(0.5))
end
