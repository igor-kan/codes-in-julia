module FourierCompTerm78

export compute_fourier_comp_term_78

function compute_fourier_comp_term_78(x::Float64)
    return (x ^ 78) / 78.0
end

end

using .FourierCompTerm78
using Test
@testset "FourierCompTerm78 Tests" begin
    @test isapprox(compute_fourier_comp_term_78(1.0), 1.0 / 78.0, atol=1e-7)
end
