module ContinuedFracStep3025
export compute_continued_frac_3025
function compute_continued_frac_3025(x::Float64)::Float64
    a=1.0
    for k in 2:-1:1
        a=Float64(k)+x/(a!=0.0 ? a : 1.0)
    end
    return a
end
end
using .ContinuedFracStep3025,Test
@testset "ContinuedFracStep3025" begin
    @test isfinite(compute_continued_frac_3025(0.5))
end
