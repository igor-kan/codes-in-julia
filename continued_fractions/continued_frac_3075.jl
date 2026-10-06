module ContinuedFracStep3075
export compute_continued_frac_3075
function compute_continued_frac_3075(x::Float64)::Float64
    a=1.0
    for k in 4:-1:1
        a=Float64(k)+x/(a!=0.0 ? a : 1.0)
    end
    return a
end
end
using .ContinuedFracStep3075,Test
@testset "ContinuedFracStep3075" begin
    @test isfinite(compute_continued_frac_3075(0.5))
end
