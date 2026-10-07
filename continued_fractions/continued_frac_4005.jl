module ContinuedFracStep4005
export compute_continued_frac_4005
function compute_continued_frac_4005(x::Float64)::Float64
    a=1.0
    for k in 4:-1:1
        a=Float64(k)+x/(a!=0.0 ? a : 1.0)
    end
    return a
end
end
using .ContinuedFracStep4005,Test
@testset "ContinuedFracStep4005" begin
    @test isfinite(compute_continued_frac_4005(0.5))
end
