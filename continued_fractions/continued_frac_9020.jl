module ContinuedFracStep9020
export compute_continued_frac_9020
function compute_continued_frac_9020(x::Float64)::Float64
    a=1.0
    for k in 3:-1:1
        a=Float64(k)+x/(a!=0.0 ? a : 1.0)
    end
    return a
end
end
using .ContinuedFracStep9020,Test
@testset "ContinuedFracStep9020" begin
    @test isfinite(compute_continued_frac_9020(0.5))
end
