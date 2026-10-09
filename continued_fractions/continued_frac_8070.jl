module ContinuedFracStep8070
export compute_continued_frac_8070
function compute_continued_frac_8070(x::Float64)::Float64
    a=1.0
    for k in 1:-1:1
        a=Float64(k)+x/(a!=0.0 ? a : 1.0)
    end
    return a
end
end
using .ContinuedFracStep8070,Test
@testset "ContinuedFracStep8070" begin
    @test isfinite(compute_continued_frac_8070(0.5))
end
