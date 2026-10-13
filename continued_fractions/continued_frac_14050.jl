module ContinuedFracStep14050
export compute_continued_frac_14050
function compute_continued_frac_14050(x::Float64)::Float64
    a=1.0
    for k in 5:-1:1
        a=Float64(k)+x/(a!=0.0 ? a : 1.0)
    end
    return a
end
end
using .ContinuedFracStep14050,Test
@testset "ContinuedFracStep14050" begin
    @test isfinite(compute_continued_frac_14050(0.5))
end
