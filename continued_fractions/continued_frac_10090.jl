module ContinuedFracStep10090
export compute_continued_frac_10090
function compute_continued_frac_10090(x::Float64)::Float64
    a=1.0
    for k in 5:-1:1
        a=Float64(k)+x/(a!=0.0 ? a : 1.0)
    end
    return a
end
end
using .ContinuedFracStep10090,Test
@testset "ContinuedFracStep10090" begin
    @test isfinite(compute_continued_frac_10090(0.5))
end
