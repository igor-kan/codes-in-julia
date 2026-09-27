module HarmonicSeriesTerm51

export compute_harmonic_series_term_51

function compute_harmonic_series_term_51(x::Float64)
    return (x ^ 51) / 51.0
end

end

using .HarmonicSeriesTerm51
using Test
@testset "HarmonicSeriesTerm51 Tests" begin
    @test isapprox(compute_harmonic_series_term_51(1.0), 1.0 / 51.0, atol=1e-7)
end
