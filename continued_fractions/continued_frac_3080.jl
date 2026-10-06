module ContinuedFracStep3080
export compute_continued_frac_3080
function compute_continued_frac_3080(x::Float64)::Float64
    a=1.0
    for k in 3:-1:1
        a=Float64(k)+x/(a!=0.0 ? a : 1.0)
    end
    return a
end
end
using .ContinuedFracStep3080,Test
@testset "ContinuedFracStep3080" begin
    @test isfinite(compute_continued_frac_3080(0.5))
end
