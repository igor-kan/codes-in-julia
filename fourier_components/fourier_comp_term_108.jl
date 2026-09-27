module FourierCompTerm108

export compute_fourier_comp_term_108

function compute_fourier_comp_term_108(x::Float64)
    return (x ^ 108) / 108.0
end

end

using .FourierCompTerm108
using Test
@testset "FourierCompTerm108 Tests" begin
    @test isapprox(compute_fourier_comp_term_108(1.0), 1.0 / 108.0, atol=1e-7)
end
