module ContinuedFracStep515

export compute_continued_frac_515

function compute_continued_frac_515(x::Float64)::Float64
    a = 1.0
    for k in (6):-1:1
        a = Float64(k) + x / (a != 0.0 ? a : 1.0)
    end
    return a
end

end

using .ContinuedFracStep515
using Test
@testset "ContinuedFracStep515 Tests" begin
    @test isfinite(compute_continued_frac_515(0.5))
end
