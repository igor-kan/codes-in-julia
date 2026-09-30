module ContinuedFracStep75

export compute_continued_frac_75

function compute_continued_frac_75(x::Float64)::Float64
    a = 1.0
    for k in (4):-1:1
        a = Float64(k) + x / (a != 0.0 ? a : 1.0)
    end
    return a
end

end

using .ContinuedFracStep75
using Test
@testset "ContinuedFracStep75 Tests" begin
    @test isfinite(compute_continued_frac_75(0.5))
end
