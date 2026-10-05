module ContinuedFracStep2110
export compute_continued_frac_2110
function compute_continued_frac_2110(x::Float64)::Float64
    a=1.0
    for k in 5:-1:1
        a=Float64(k)+x/(a!=0.0 ? a : 1.0)
    end
    return a
end
end
using .ContinuedFracStep2110,Test
@testset "ContinuedFracStep2110" begin
    @test isfinite(compute_continued_frac_2110(0.5))
end
