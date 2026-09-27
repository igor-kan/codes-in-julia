module HarmonicSeriesTerm31

export compute_harmonic_series_term_31

function compute_harmonic_series_term_31(x::Float64)
    return (x ^ 31) / 31.0
end

end

using .HarmonicSeriesTerm31
using Test
@testset "HarmonicSeriesTerm31 Tests" begin
    @test isapprox(compute_harmonic_series_term_31(1.0), 1.0 / 31.0, atol=1e-7)
end
