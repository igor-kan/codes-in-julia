module FourierCompTerm103

export compute_fourier_comp_term_103

function compute_fourier_comp_term_103(x::Float64)
    return (x ^ 103) / 103.0
end

end

using .FourierCompTerm103
using Test
@testset "FourierCompTerm103 Tests" begin
    @test isapprox(compute_fourier_comp_term_103(1.0), 1.0 / 103.0, atol=1e-7)
end
