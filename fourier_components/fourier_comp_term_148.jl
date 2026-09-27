module FourierCompTerm148

export compute_fourier_comp_term_148

function compute_fourier_comp_term_148(x::Float64)
    return (x ^ 148) / 148.0
end

end

using .FourierCompTerm148
using Test
@testset "FourierCompTerm148 Tests" begin
    @test isapprox(compute_fourier_comp_term_148(1.0), 1.0 / 148.0, atol=1e-7)
end
