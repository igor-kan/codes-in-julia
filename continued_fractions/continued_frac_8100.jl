module ContinuedFracStep8100
export compute_continued_frac_8100
function compute_continued_frac_8100(x::Float64)::Float64
    a=1.0
    for k in 1:-1:1
        a=Float64(k)+x/(a!=0.0 ? a : 1.0)
    end
    return a
end
end
using .ContinuedFracStep8100,Test
@testset "ContinuedFracStep8100" begin
    @test isfinite(compute_continued_frac_8100(0.5))
end
