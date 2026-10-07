module ContinuedFracStep4070
export compute_continued_frac_4070
function compute_continued_frac_4070(x::Float64)::Float64
    a=1.0
    for k in 3:-1:1
        a=Float64(k)+x/(a!=0.0 ? a : 1.0)
    end
    return a
end
end
using .ContinuedFracStep4070,Test
@testset "ContinuedFracStep4070" begin
    @test isfinite(compute_continued_frac_4070(0.5))
end
