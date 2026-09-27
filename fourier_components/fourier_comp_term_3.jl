module FourierCompTerm3

export compute_fourier_comp_term_3

function compute_fourier_comp_term_3(x::Float64)
    return (x ^ 3) / 3.0
end

end

using .FourierCompTerm3
using Test
@testset "FourierCompTerm3 Tests" begin
    @test isapprox(compute_fourier_comp_term_3(1.0), 1.0 / 3.0, atol=1e-7)
end
