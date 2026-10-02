module ContinuedFracStep540

export compute_continued_frac_540

function compute_continued_frac_540(x::Float64)::Float64
    a = 1.0
    for k in (1):-1:1
        a = Float64(k) + x / (a != 0.0 ? a : 1.0)
    end
    return a
end

end

using .ContinuedFracStep540
using Test
@testset "ContinuedFracStep540 Tests" begin
    @test isfinite(compute_continued_frac_540(0.5))
end
