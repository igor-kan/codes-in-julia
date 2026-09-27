module FourierCompTerm13

export compute_fourier_comp_term_13

function compute_fourier_comp_term_13(x::Float64)
    return (x ^ 13) / 13.0
end

end

using .FourierCompTerm13
using Test
@testset "FourierCompTerm13 Tests" begin
    @test isapprox(compute_fourier_comp_term_13(1.0), 1.0 / 13.0, atol=1e-7)
end
