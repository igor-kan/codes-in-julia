module FourierCompTerm128

export compute_fourier_comp_term_128

function compute_fourier_comp_term_128(x::Float64)
    return (x ^ 128) / 128.0
end

end

using .FourierCompTerm128
using Test
@testset "FourierCompTerm128 Tests" begin
    @test isapprox(compute_fourier_comp_term_128(1.0), 1.0 / 128.0, atol=1e-7)
end
