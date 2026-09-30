module ContinuedFracStep15

export compute_continued_frac_15

function compute_continued_frac_15(x::Float64)::Float64
    a = 1.0
    for k in (4):-1:1
        a = Float64(k) + x / (a != 0.0 ? a : 1.0)
    end
    return a
end

end

using .ContinuedFracStep15
using Test
@testset "ContinuedFracStep15 Tests" begin
    @test isfinite(compute_continued_frac_15(0.5))
end
