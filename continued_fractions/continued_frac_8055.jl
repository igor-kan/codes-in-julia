module ContinuedFracStep8055
export compute_continued_frac_8055
function compute_continued_frac_8055(x::Float64)::Float64
    a=1.0
    for k in 4:-1:1
        a=Float64(k)+x/(a!=0.0 ? a : 1.0)
    end
    return a
end
end
using .ContinuedFracStep8055,Test
@testset "ContinuedFracStep8055" begin
    @test isfinite(compute_continued_frac_8055(0.5))
end
