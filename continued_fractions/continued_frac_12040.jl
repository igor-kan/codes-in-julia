module ContinuedFracStep12040
export compute_continued_frac_12040
function compute_continued_frac_12040(x::Float64)::Float64
    a=1.0
    for k in 5:-1:1
        a=Float64(k)+x/(a!=0.0 ? a : 1.0)
    end
    return a
end
end
using .ContinuedFracStep12040,Test
@testset "ContinuedFracStep12040" begin
    @test isfinite(compute_continued_frac_12040(0.5))
end
