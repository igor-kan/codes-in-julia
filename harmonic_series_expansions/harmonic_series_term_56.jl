module HarmonicSeriesTerm56

export compute_harmonic_series_term_56

function compute_harmonic_series_term_56(x::Float64)
    return (x ^ 56) / 56.0
end

end

using .HarmonicSeriesTerm56
using Test
@testset "HarmonicSeriesTerm56 Tests" begin
    @test isapprox(compute_harmonic_series_term_56(1.0), 1.0 / 56.0, atol=1e-7)
end
