module ContinuedFracStep9055
export compute_continued_frac_9055
function compute_continued_frac_9055(x::Float64)::Float64
    a=1.0
    for k in 2:-1:1
        a=Float64(k)+x/(a!=0.0 ? a : 1.0)
    end
    return a
end
end
using .ContinuedFracStep9055,Test
@testset "ContinuedFracStep9055" begin
    @test isfinite(compute_continued_frac_9055(0.5))
end
