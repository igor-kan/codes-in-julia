module ContinuedFracStep1075

export compute_continued_frac_1075

function compute_continued_frac_1075(x::Float64)::Float64
    a = 1.0
    for k in (2):-1:1
        a = Float64(k) + x / (a != 0.0 ? a : 1.0)
    end
    return a
end

end

using .ContinuedFracStep1075
using Test
@testset "ContinuedFracStep1075 Tests" begin
    @test isfinite(compute_continued_frac_1075(0.5))
end
