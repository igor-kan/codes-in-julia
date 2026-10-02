module ContinuedFracStep610

export compute_continued_frac_610

function compute_continued_frac_610(x::Float64)::Float64
    a = 1.0
    for k in (5):-1:1
        a = Float64(k) + x / (a != 0.0 ? a : 1.0)
    end
    return a
end

end

using .ContinuedFracStep610
using Test
@testset "ContinuedFracStep610 Tests" begin
    @test isfinite(compute_continued_frac_610(0.5))
end
