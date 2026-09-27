module HarmonicSeriesTerm146

export compute_harmonic_series_term_146

function compute_harmonic_series_term_146(x::Float64)
    return (x ^ 146) / 146.0
end

end

using .HarmonicSeriesTerm146
using Test
@testset "HarmonicSeriesTerm146 Tests" begin
    @test isapprox(compute_harmonic_series_term_146(1.0), 1.0 / 146.0, atol=1e-7)
end
