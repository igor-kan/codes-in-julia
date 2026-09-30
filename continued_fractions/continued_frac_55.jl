module ContinuedFracStep55

export compute_continued_frac_55

function compute_continued_frac_55(x::Float64)::Float64
    a = 1.0
    for k in (2):-1:1
        a = Float64(k) + x / (a != 0.0 ? a : 1.0)
    end
    return a
end

end

using .ContinuedFracStep55
using Test
@testset "ContinuedFracStep55 Tests" begin
    @test isfinite(compute_continued_frac_55(0.5))
end
