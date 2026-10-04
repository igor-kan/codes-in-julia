module ContinuedFracStep1005

export compute_continued_frac_1005

function compute_continued_frac_1005(x::Float64)::Float64
    a = 1.0
    for k in (4):-1:1
        a = Float64(k) + x / (a != 0.0 ? a : 1.0)
    end
    return a
end

end

using .ContinuedFracStep1005
using Test
@testset "ContinuedFracStep1005 Tests" begin
    @test isfinite(compute_continued_frac_1005(0.5))
end
