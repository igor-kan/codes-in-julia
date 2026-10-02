module ContinuedFracStep555

export compute_continued_frac_555

function compute_continued_frac_555(x::Float64)::Float64
    a = 1.0
    for k in (4):-1:1
        a = Float64(k) + x / (a != 0.0 ? a : 1.0)
    end
    return a
end

end

using .ContinuedFracStep555
using Test
@testset "ContinuedFracStep555 Tests" begin
    @test isfinite(compute_continued_frac_555(0.5))
end
