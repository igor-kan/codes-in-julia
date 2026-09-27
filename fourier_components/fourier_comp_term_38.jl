module FourierCompTerm38

export compute_fourier_comp_term_38

function compute_fourier_comp_term_38(x::Float64)
    return (x ^ 38) / 38.0
end

end

using .FourierCompTerm38
using Test
@testset "FourierCompTerm38 Tests" begin
    @test isapprox(compute_fourier_comp_term_38(1.0), 1.0 / 38.0, atol=1e-7)
end
