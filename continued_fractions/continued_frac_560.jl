module ContinuedFracStep560

export compute_continued_frac_560

function compute_continued_frac_560(x::Float64)::Float64
    a = 1.0
    for k in (3):-1:1
        a = Float64(k) + x / (a != 0.0 ? a : 1.0)
    end
    return a
end

end

using .ContinuedFracStep560
using Test
@testset "ContinuedFracStep560 Tests" begin
    @test isfinite(compute_continued_frac_560(0.5))
end
