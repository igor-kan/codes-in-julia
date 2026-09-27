module FourierCompTerm8

export compute_fourier_comp_term_8

function compute_fourier_comp_term_8(x::Float64)
    return (x ^ 8) / 8.0
end

end

using .FourierCompTerm8
using Test
@testset "FourierCompTerm8 Tests" begin
    @test isapprox(compute_fourier_comp_term_8(1.0), 1.0 / 8.0, atol=1e-7)
end
