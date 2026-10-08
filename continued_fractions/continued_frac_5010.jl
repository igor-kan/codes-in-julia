module ContinuedFracStep5010
export compute_continued_frac_5010
function compute_continued_frac_5010(x::Float64)::Float64
    a=1.0
    for k in 1:-1:1
        a=Float64(k)+x/(a!=0.0 ? a : 1.0)
    end
    return a
end
end
using .ContinuedFracStep5010,Test
@testset "ContinuedFracStep5010" begin
    @test isfinite(compute_continued_frac_5010(0.5))
end
