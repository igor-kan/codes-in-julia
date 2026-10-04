module ContinuedFracStep1050

export compute_continued_frac_1050

function compute_continued_frac_1050(x::Float64)::Float64
    a = 1.0
    for k in (1):-1:1
        a = Float64(k) + x / (a != 0.0 ? a : 1.0)
    end
    return a
end

end

using .ContinuedFracStep1050
using Test
@testset "ContinuedFracStep1050 Tests" begin
    @test isfinite(compute_continued_frac_1050(0.5))
end
