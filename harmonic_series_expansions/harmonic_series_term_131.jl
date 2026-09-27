module HarmonicSeriesTerm131

export compute_harmonic_series_term_131

function compute_harmonic_series_term_131(x::Float64)
    return (x ^ 131) / 131.0
end

end

using .HarmonicSeriesTerm131
using Test
@testset "HarmonicSeriesTerm131 Tests" begin
    @test isapprox(compute_harmonic_series_term_131(1.0), 1.0 / 131.0, atol=1e-7)
end
