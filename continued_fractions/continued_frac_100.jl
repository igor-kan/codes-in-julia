module ContinuedFracStep100

export compute_continued_frac_100

function compute_continued_frac_100(x::Float64)::Float64
    a = 1.0
    for k in (5):-1:1
        a = Float64(k) + x / (a != 0.0 ? a : 1.0)
    end
    return a
end

end

using .ContinuedFracStep100
using Test
@testset "ContinuedFracStep100 Tests" begin
    @test isfinite(compute_continued_frac_100(0.5))
end
