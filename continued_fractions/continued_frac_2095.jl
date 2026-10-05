module ContinuedFracStep2095
export compute_continued_frac_2095
function compute_continued_frac_2095(x::Float64)::Float64
    a=1.0
    for k in 2:-1:1
        a=Float64(k)+x/(a!=0.0 ? a : 1.0)
    end
    return a
end
end
using .ContinuedFracStep2095,Test
@testset "ContinuedFracStep2095" begin
    @test isfinite(compute_continued_frac_2095(0.5))
end
