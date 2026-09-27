module FourierCompTerm133

export compute_fourier_comp_term_133

function compute_fourier_comp_term_133(x::Float64)
    return (x ^ 133) / 133.0
end

end

using .FourierCompTerm133
using Test
@testset "FourierCompTerm133 Tests" begin
    @test isapprox(compute_fourier_comp_term_133(1.0), 1.0 / 133.0, atol=1e-7)
end
