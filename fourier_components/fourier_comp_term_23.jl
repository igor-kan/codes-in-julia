module FourierCompTerm23

export compute_fourier_comp_term_23

function compute_fourier_comp_term_23(x::Float64)
    return (x ^ 23) / 23.0
end

end

using .FourierCompTerm23
using Test
@testset "FourierCompTerm23 Tests" begin
    @test isapprox(compute_fourier_comp_term_23(1.0), 1.0 / 23.0, atol=1e-7)
end
