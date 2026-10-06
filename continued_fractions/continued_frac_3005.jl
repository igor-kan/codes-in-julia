module ContinuedFracStep3005
export compute_continued_frac_3005
function compute_continued_frac_3005(x::Float64)::Float64
    a=1.0
    for k in 6:-1:1
        a=Float64(k)+x/(a!=0.0 ? a : 1.0)
    end
    return a
end
end
using .ContinuedFracStep3005,Test
@testset "ContinuedFracStep3005" begin
    @test isfinite(compute_continued_frac_3005(0.5))
end
