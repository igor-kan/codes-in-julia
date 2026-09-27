module FourierCompTerm88

export compute_fourier_comp_term_88

function compute_fourier_comp_term_88(x::Float64)
    return (x ^ 88) / 88.0
end

end

using .FourierCompTerm88
using Test
@testset "FourierCompTerm88 Tests" begin
    @test isapprox(compute_fourier_comp_term_88(1.0), 1.0 / 88.0, atol=1e-7)
end
