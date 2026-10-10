module ContinuedFracStep9060
export compute_continued_frac_9060
function compute_continued_frac_9060(x::Float64)::Float64
    a=1.0
    for k in 1:-1:1
        a=Float64(k)+x/(a!=0.0 ? a : 1.0)
    end
    return a
end
end
using .ContinuedFracStep9060,Test
@testset "ContinuedFracStep9060" begin
    @test isfinite(compute_continued_frac_9060(0.5))
end
