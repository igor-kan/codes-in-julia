module ContinuedFracStep570

export compute_continued_frac_570

function compute_continued_frac_570(x::Float64)::Float64
    a = 1.0
    for k in (1):-1:1
        a = Float64(k) + x / (a != 0.0 ? a : 1.0)
    end
    return a
end

end

using .ContinuedFracStep570
using Test
@testset "ContinuedFracStep570 Tests" begin
    @test isfinite(compute_continued_frac_570(0.5))
end
