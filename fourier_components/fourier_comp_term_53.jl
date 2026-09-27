module FourierCompTerm53

export compute_fourier_comp_term_53

function compute_fourier_comp_term_53(x::Float64)
    return (x ^ 53) / 53.0
end

end

using .FourierCompTerm53
using Test
@testset "FourierCompTerm53 Tests" begin
    @test isapprox(compute_fourier_comp_term_53(1.0), 1.0 / 53.0, atol=1e-7)
end
