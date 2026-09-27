module HarmonicSeriesTerm36

export compute_harmonic_series_term_36

function compute_harmonic_series_term_36(x::Float64)
    return (x ^ 36) / 36.0
end

end

using .HarmonicSeriesTerm36
using Test
@testset "HarmonicSeriesTerm36 Tests" begin
    @test isapprox(compute_harmonic_series_term_36(1.0), 1.0 / 36.0, atol=1e-7)
end
