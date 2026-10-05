module ContinuedFracStep2075
export compute_continued_frac_2075
function compute_continued_frac_2075(x::Float64)::Float64
    a=1.0
    for k in 6:-1:1
        a=Float64(k)+x/(a!=0.0 ? a : 1.0)
    end
    return a
end
end
using .ContinuedFracStep2075,Test
@testset "ContinuedFracStep2075" begin
    @test isfinite(compute_continued_frac_2075(0.5))
end
