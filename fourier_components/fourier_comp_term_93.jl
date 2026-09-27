module FourierCompTerm93

export compute_fourier_comp_term_93

function compute_fourier_comp_term_93(x::Float64)
    return (x ^ 93) / 93.0
end

end

using .FourierCompTerm93
using Test
@testset "FourierCompTerm93 Tests" begin
    @test isapprox(compute_fourier_comp_term_93(1.0), 1.0 / 93.0, atol=1e-7)
end
