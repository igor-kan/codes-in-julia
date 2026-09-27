module FourierCompTerm63

export compute_fourier_comp_term_63

function compute_fourier_comp_term_63(x::Float64)
    return (x ^ 63) / 63.0
end

end

using .FourierCompTerm63
using Test
@testset "FourierCompTerm63 Tests" begin
    @test isapprox(compute_fourier_comp_term_63(1.0), 1.0 / 63.0, atol=1e-7)
end
