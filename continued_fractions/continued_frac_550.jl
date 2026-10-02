module ContinuedFracStep550

export compute_continued_frac_550

function compute_continued_frac_550(x::Float64)::Float64
    a = 1.0
    for k in (5):-1:1
        a = Float64(k) + x / (a != 0.0 ? a : 1.0)
    end
    return a
end

end

using .ContinuedFracStep550
using Test
@testset "ContinuedFracStep550 Tests" begin
    @test isfinite(compute_continued_frac_550(0.5))
end
