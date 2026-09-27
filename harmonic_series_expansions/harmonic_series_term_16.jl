module HarmonicSeriesTerm16

export compute_harmonic_series_term_16

function compute_harmonic_series_term_16(x::Float64)
    return (x ^ 16) / 16.0
end

end

using .HarmonicSeriesTerm16
using Test
@testset "HarmonicSeriesTerm16 Tests" begin
    @test isapprox(compute_harmonic_series_term_16(1.0), 1.0 / 16.0, atol=1e-7)
end
