module ContinuedFracStep10080
export compute_continued_frac_10080
function compute_continued_frac_10080(x::Float64)::Float64
    a=1.0
    for k in 1:-1:1
        a=Float64(k)+x/(a!=0.0 ? a : 1.0)
    end
    return a
end
end
using .ContinuedFracStep10080,Test
@testset "ContinuedFracStep10080" begin
    @test isfinite(compute_continued_frac_10080(0.5))
end
