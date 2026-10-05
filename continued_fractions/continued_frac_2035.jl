module ContinuedFracStep2035
export compute_continued_frac_2035
function compute_continued_frac_2035(x::Float64)::Float64
    a=1.0
    for k in 2:-1:1
        a=Float64(k)+x/(a!=0.0 ? a : 1.0)
    end
    return a
end
end
using .ContinuedFracStep2035,Test
@testset "ContinuedFracStep2035" begin
    @test isfinite(compute_continued_frac_2035(0.5))
end
