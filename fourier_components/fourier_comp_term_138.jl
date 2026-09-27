module FourierCompTerm138

export compute_fourier_comp_term_138

function compute_fourier_comp_term_138(x::Float64)
    return (x ^ 138) / 138.0
end

end

using .FourierCompTerm138
using Test
@testset "FourierCompTerm138 Tests" begin
    @test isapprox(compute_fourier_comp_term_138(1.0), 1.0 / 138.0, atol=1e-7)
end
