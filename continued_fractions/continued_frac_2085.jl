module ContinuedFracStep2085
export compute_continued_frac_2085
function compute_continued_frac_2085(x::Float64)::Float64
    a=1.0
    for k in 4:-1:1
        a=Float64(k)+x/(a!=0.0 ? a : 1.0)
    end
    return a
end
end
using .ContinuedFracStep2085,Test
@testset "ContinuedFracStep2085" begin
    @test isfinite(compute_continued_frac_2085(0.5))
end
