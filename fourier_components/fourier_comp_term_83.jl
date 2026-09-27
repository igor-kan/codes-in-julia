module FourierCompTerm83

export compute_fourier_comp_term_83

function compute_fourier_comp_term_83(x::Float64)
    return (x ^ 83) / 83.0
end

end

using .FourierCompTerm83
using Test
@testset "FourierCompTerm83 Tests" begin
    @test isapprox(compute_fourier_comp_term_83(1.0), 1.0 / 83.0, atol=1e-7)
end
