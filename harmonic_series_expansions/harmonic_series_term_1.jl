module HarmonicSeriesTerm1

export compute_harmonic_series_term_1

function compute_harmonic_series_term_1(x::Float64)
    return (x ^ 1) / 1.0
end

end

using .HarmonicSeriesTerm1
using Test
@testset "HarmonicSeriesTerm1 Tests" begin
    @test isapprox(compute_harmonic_series_term_1(1.0), 1.0 / 1.0, atol=1e-7)
end
