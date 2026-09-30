module ContinuedFracStep40

export compute_continued_frac_40

function compute_continued_frac_40(x::Float64)::Float64
    a = 1.0
    for k in (5):-1:1
        a = Float64(k) + x / (a != 0.0 ? a : 1.0)
    end
    return a
end

end

using .ContinuedFracStep40
using Test
@testset "ContinuedFracStep40 Tests" begin
    @test isfinite(compute_continued_frac_40(0.5))
end
