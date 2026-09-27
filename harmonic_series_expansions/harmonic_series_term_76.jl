module HarmonicSeriesTerm76

export compute_harmonic_series_term_76

function compute_harmonic_series_term_76(x::Float64)
    return (x ^ 76) / 76.0
end

end

using .HarmonicSeriesTerm76
using Test
@testset "HarmonicSeriesTerm76 Tests" begin
    @test isapprox(compute_harmonic_series_term_76(1.0), 1.0 / 76.0, atol=1e-7)
end
