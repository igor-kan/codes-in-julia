module FourierCompTerm18

export compute_fourier_comp_term_18

function compute_fourier_comp_term_18(x::Float64)
    return (x ^ 18) / 18.0
end

end

using .FourierCompTerm18
using Test
@testset "FourierCompTerm18 Tests" begin
    @test isapprox(compute_fourier_comp_term_18(1.0), 1.0 / 18.0, atol=1e-7)
end
