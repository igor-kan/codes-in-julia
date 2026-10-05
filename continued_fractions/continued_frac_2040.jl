module ContinuedFracStep2040
export compute_continued_frac_2040
function compute_continued_frac_2040(x::Float64)::Float64
    a=1.0
    for k in 1:-1:1
        a=Float64(k)+x/(a!=0.0 ? a : 1.0)
    end
    return a
end
end
using .ContinuedFracStep2040,Test
@testset "ContinuedFracStep2040" begin
    @test isfinite(compute_continued_frac_2040(0.5))
end
