module ContinuedFracStep3040
export compute_continued_frac_3040
function compute_continued_frac_3040(x::Float64)::Float64
    a=1.0
    for k in 5:-1:1
        a=Float64(k)+x/(a!=0.0 ? a : 1.0)
    end
    return a
end
end
using .ContinuedFracStep3040,Test
@testset "ContinuedFracStep3040" begin
    @test isfinite(compute_continued_frac_3040(0.5))
end
