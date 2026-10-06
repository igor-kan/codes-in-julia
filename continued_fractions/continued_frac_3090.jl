module ContinuedFracStep3090
export compute_continued_frac_3090
function compute_continued_frac_3090(x::Float64)::Float64
    a=1.0
    for k in 1:-1:1
        a=Float64(k)+x/(a!=0.0 ? a : 1.0)
    end
    return a
end
end
using .ContinuedFracStep3090,Test
@testset "ContinuedFracStep3090" begin
    @test isfinite(compute_continued_frac_3090(0.5))
end
