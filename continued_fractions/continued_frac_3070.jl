module ContinuedFracStep3070
export compute_continued_frac_3070
function compute_continued_frac_3070(x::Float64)::Float64
    a=1.0
    for k in 5:-1:1
        a=Float64(k)+x/(a!=0.0 ? a : 1.0)
    end
    return a
end
end
using .ContinuedFracStep3070,Test
@testset "ContinuedFracStep3070" begin
    @test isfinite(compute_continued_frac_3070(0.5))
end
