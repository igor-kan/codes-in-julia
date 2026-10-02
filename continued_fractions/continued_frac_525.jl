module ContinuedFracStep525

export compute_continued_frac_525

function compute_continued_frac_525(x::Float64)::Float64
    a = 1.0
    for k in (4):-1:1
        a = Float64(k) + x / (a != 0.0 ? a : 1.0)
    end
    return a
end

end

using .ContinuedFracStep525
using Test
@testset "ContinuedFracStep525 Tests" begin
    @test isfinite(compute_continued_frac_525(0.5))
end
