module ContinuedFracStep3085
export compute_continued_frac_3085
function compute_continued_frac_3085(x::Float64)::Float64
    a=1.0
    for k in 2:-1:1
        a=Float64(k)+x/(a!=0.0 ? a : 1.0)
    end
    return a
end
end
using .ContinuedFracStep3085,Test
@testset "ContinuedFracStep3085" begin
    @test isfinite(compute_continued_frac_3085(0.5))
end
