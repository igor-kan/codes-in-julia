module ContinuedFracStep3030
export compute_continued_frac_3030
function compute_continued_frac_3030(x::Float64)::Float64
    a=1.0
    for k in 1:-1:1
        a=Float64(k)+x/(a!=0.0 ? a : 1.0)
    end
    return a
end
end
using .ContinuedFracStep3030,Test
@testset "ContinuedFracStep3030" begin
    @test isfinite(compute_continued_frac_3030(0.5))
end
