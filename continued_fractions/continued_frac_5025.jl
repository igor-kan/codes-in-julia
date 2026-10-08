module ContinuedFracStep5025
export compute_continued_frac_5025
function compute_continued_frac_5025(x::Float64)::Float64
    a=1.0
    for k in 4:-1:1
        a=Float64(k)+x/(a!=0.0 ? a : 1.0)
    end
    return a
end
end
using .ContinuedFracStep5025,Test
@testset "ContinuedFracStep5025" begin
    @test isfinite(compute_continued_frac_5025(0.5))
end
