module ContinuedFracStep5050
export compute_continued_frac_5050
function compute_continued_frac_5050(x::Float64)::Float64
    a=1.0
    for k in 5:-1:1
        a=Float64(k)+x/(a!=0.0 ? a : 1.0)
    end
    return a
end
end
using .ContinuedFracStep5050,Test
@testset "ContinuedFracStep5050" begin
    @test isfinite(compute_continued_frac_5050(0.5))
end
