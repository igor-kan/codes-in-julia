module FourierCompTerm33

export compute_fourier_comp_term_33

function compute_fourier_comp_term_33(x::Float64)
    return (x ^ 33) / 33.0
end

end

using .FourierCompTerm33
using Test
@testset "FourierCompTerm33 Tests" begin
    @test isapprox(compute_fourier_comp_term_33(1.0), 1.0 / 33.0, atol=1e-7)
end
