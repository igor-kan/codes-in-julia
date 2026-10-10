module ContinuedFracStep9035
export compute_continued_frac_9035
function compute_continued_frac_9035(x::Float64)::Float64
    a=1.0
    for k in 6:-1:1
        a=Float64(k)+x/(a!=0.0 ? a : 1.0)
    end
    return a
end
end
using .ContinuedFracStep9035,Test
@testset "ContinuedFracStep9035" begin
    @test isfinite(compute_continued_frac_9035(0.5))
end
