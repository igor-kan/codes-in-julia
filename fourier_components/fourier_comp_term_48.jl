module FourierCompTerm48

export compute_fourier_comp_term_48

function compute_fourier_comp_term_48(x::Float64)
    return (x ^ 48) / 48.0
end

end

using .FourierCompTerm48
using Test
@testset "FourierCompTerm48 Tests" begin
    @test isapprox(compute_fourier_comp_term_48(1.0), 1.0 / 48.0, atol=1e-7)
end
