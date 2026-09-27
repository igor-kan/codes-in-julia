module FourierCompTerm28

export compute_fourier_comp_term_28

function compute_fourier_comp_term_28(x::Float64)
    return (x ^ 28) / 28.0
end

end

using .FourierCompTerm28
using Test
@testset "FourierCompTerm28 Tests" begin
    @test isapprox(compute_fourier_comp_term_28(1.0), 1.0 / 28.0, atol=1e-7)
end
