module FourierCompTerm143

export compute_fourier_comp_term_143

function compute_fourier_comp_term_143(x::Float64)
    return (x ^ 143) / 143.0
end

end

using .FourierCompTerm143
using Test
@testset "FourierCompTerm143 Tests" begin
    @test isapprox(compute_fourier_comp_term_143(1.0), 1.0 / 143.0, atol=1e-7)
end
