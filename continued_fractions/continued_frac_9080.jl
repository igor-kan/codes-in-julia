module ContinuedFracStep9080
export compute_continued_frac_9080
function compute_continued_frac_9080(x::Float64)::Float64
    a=1.0
    for k in 3:-1:1
        a=Float64(k)+x/(a!=0.0 ? a : 1.0)
    end
    return a
end
end
using .ContinuedFracStep9080,Test
@testset "ContinuedFracStep9080" begin
    @test isfinite(compute_continued_frac_9080(0.5))
end
