module FourierCompTerm118

export compute_fourier_comp_term_118

function compute_fourier_comp_term_118(x::Float64)
    return (x ^ 118) / 118.0
end

end

using .FourierCompTerm118
using Test
@testset "FourierCompTerm118 Tests" begin
    @test isapprox(compute_fourier_comp_term_118(1.0), 1.0 / 118.0, atol=1e-7)
end
