module ContinuedFracStep605

export compute_continued_frac_605

function compute_continued_frac_605(x::Float64)::Float64
    a = 1.0
    for k in (6):-1:1
        a = Float64(k) + x / (a != 0.0 ? a : 1.0)
    end
    return a
end

end

using .ContinuedFracStep605
using Test
@testset "ContinuedFracStep605 Tests" begin
    @test isfinite(compute_continued_frac_605(0.5))
end
