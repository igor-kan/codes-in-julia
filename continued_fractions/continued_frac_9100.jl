module ContinuedFracStep9100
export compute_continued_frac_9100
function compute_continued_frac_9100(x::Float64)::Float64
    a=1.0
    for k in 5:-1:1
        a=Float64(k)+x/(a!=0.0 ? a : 1.0)
    end
    return a
end
end
using .ContinuedFracStep9100,Test
@testset "ContinuedFracStep9100" begin
    @test isfinite(compute_continued_frac_9100(0.5))
end
