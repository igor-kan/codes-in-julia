module FourierCompTerm123

export compute_fourier_comp_term_123

function compute_fourier_comp_term_123(x::Float64)
    return (x ^ 123) / 123.0
end

end

using .FourierCompTerm123
using Test
@testset "FourierCompTerm123 Tests" begin
    @test isapprox(compute_fourier_comp_term_123(1.0), 1.0 / 123.0, atol=1e-7)
end
