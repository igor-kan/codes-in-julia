module ContinuedFracStep4055
export compute_continued_frac_4055
function compute_continued_frac_4055(x::Float64)::Float64
    a=1.0
    for k in 6:-1:1
        a=Float64(k)+x/(a!=0.0 ? a : 1.0)
    end
    return a
end
end
using .ContinuedFracStep4055,Test
@testset "ContinuedFracStep4055" begin
    @test isfinite(compute_continued_frac_4055(0.5))
end
