module ContinuedFracStep10035
export compute_continued_frac_10035
function compute_continued_frac_10035(x::Float64)::Float64
    a=1.0
    for k in 4:-1:1
        a=Float64(k)+x/(a!=0.0 ? a : 1.0)
    end
    return a
end
end
using .ContinuedFracStep10035,Test
@testset "ContinuedFracStep10035" begin
    @test isfinite(compute_continued_frac_10035(0.5))
end
