module ContinuedFracStep620

export compute_continued_frac_620

function compute_continued_frac_620(x::Float64)::Float64
    a = 1.0
    for k in (3):-1:1
        a = Float64(k) + x / (a != 0.0 ? a : 1.0)
    end
    return a
end

end

using .ContinuedFracStep620
using Test
@testset "ContinuedFracStep620 Tests" begin
    @test isfinite(compute_continued_frac_620(0.5))
end
