module HarmonicSeriesTerm126

export compute_harmonic_series_term_126

function compute_harmonic_series_term_126(x::Float64)
    return (x ^ 126) / 126.0
end

end

using .HarmonicSeriesTerm126
using Test
@testset "HarmonicSeriesTerm126 Tests" begin
    @test isapprox(compute_harmonic_series_term_126(1.0), 1.0 / 126.0, atol=1e-7)
end
