module FourierCompTerm58

export compute_fourier_comp_term_58

function compute_fourier_comp_term_58(x::Float64)
    return (x ^ 58) / 58.0
end

end

using .FourierCompTerm58
using Test
@testset "FourierCompTerm58 Tests" begin
    @test isapprox(compute_fourier_comp_term_58(1.0), 1.0 / 58.0, atol=1e-7)
end
