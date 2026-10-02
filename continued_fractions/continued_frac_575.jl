module ContinuedFracStep575

export compute_continued_frac_575

function compute_continued_frac_575(x::Float64)::Float64
    a = 1.0
    for k in (6):-1:1
        a = Float64(k) + x / (a != 0.0 ? a : 1.0)
    end
    return a
end

end

using .ContinuedFracStep575
using Test
@testset "ContinuedFracStep575 Tests" begin
    @test isfinite(compute_continued_frac_575(0.5))
end
