module FourierCompTerm98

export compute_fourier_comp_term_98

function compute_fourier_comp_term_98(x::Float64)
    return (x ^ 98) / 98.0
end

end

using .FourierCompTerm98
using Test
@testset "FourierCompTerm98 Tests" begin
    @test isapprox(compute_fourier_comp_term_98(1.0), 1.0 / 98.0, atol=1e-7)
end
