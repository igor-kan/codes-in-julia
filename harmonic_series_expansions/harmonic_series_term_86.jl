module HarmonicSeriesTerm86

export compute_harmonic_series_term_86

function compute_harmonic_series_term_86(x::Float64)
    return (x ^ 86) / 86.0
end

end

using .HarmonicSeriesTerm86
using Test
@testset "HarmonicSeriesTerm86 Tests" begin
    @test isapprox(compute_harmonic_series_term_86(1.0), 1.0 / 86.0, atol=1e-7)
end
