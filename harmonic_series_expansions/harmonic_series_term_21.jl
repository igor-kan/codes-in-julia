module HarmonicSeriesTerm21

export compute_harmonic_series_term_21

function compute_harmonic_series_term_21(x::Float64)
    return (x ^ 21) / 21.0
end

end

using .HarmonicSeriesTerm21
using Test
@testset "HarmonicSeriesTerm21 Tests" begin
    @test isapprox(compute_harmonic_series_term_21(1.0), 1.0 / 21.0, atol=1e-7)
end
