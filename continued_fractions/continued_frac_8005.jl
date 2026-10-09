module ContinuedFracStep8005
export compute_continued_frac_8005
function compute_continued_frac_8005(x::Float64)::Float64
    a=1.0
    for k in 2:-1:1
        a=Float64(k)+x/(a!=0.0 ? a : 1.0)
    end
    return a
end
end
using .ContinuedFracStep8005,Test
@testset "ContinuedFracStep8005" begin
    @test isfinite(compute_continued_frac_8005(0.5))
end
