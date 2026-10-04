module ContinuedFracStep1070

export compute_continued_frac_1070

function compute_continued_frac_1070(x::Float64)::Float64
    a = 1.0
    for k in (3):-1:1
        a = Float64(k) + x / (a != 0.0 ? a : 1.0)
    end
    return a
end

end

using .ContinuedFracStep1070
using Test
@testset "ContinuedFracStep1070 Tests" begin
    @test isfinite(compute_continued_frac_1070(0.5))
end
