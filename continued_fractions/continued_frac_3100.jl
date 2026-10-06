module ContinuedFracStep3100
export compute_continued_frac_3100
function compute_continued_frac_3100(x::Float64)::Float64
    a=1.0
    for k in 5:-1:1
        a=Float64(k)+x/(a!=0.0 ? a : 1.0)
    end
    return a
end
end
using .ContinuedFracStep3100,Test
@testset "ContinuedFracStep3100" begin
    @test isfinite(compute_continued_frac_3100(0.5))
end
