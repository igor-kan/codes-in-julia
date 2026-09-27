module FourierCompTerm43

export compute_fourier_comp_term_43

function compute_fourier_comp_term_43(x::Float64)
    return (x ^ 43) / 43.0
end

end

using .FourierCompTerm43
using Test
@testset "FourierCompTerm43 Tests" begin
    @test isapprox(compute_fourier_comp_term_43(1.0), 1.0 / 43.0, atol=1e-7)
end
