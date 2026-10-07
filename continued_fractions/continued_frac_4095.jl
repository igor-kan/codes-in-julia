module ContinuedFracStep4095
export compute_continued_frac_4095
function compute_continued_frac_4095(x::Float64)::Float64
    a=1.0
    for k in 4:-1:1
        a=Float64(k)+x/(a!=0.0 ? a : 1.0)
    end
    return a
end
end
using .ContinuedFracStep4095,Test
@testset "ContinuedFracStep4095" begin
    @test isfinite(compute_continued_frac_4095(0.5))
end
