module HarmonicSeriesTerm81

export compute_harmonic_series_term_81

function compute_harmonic_series_term_81(x::Float64)
    return (x ^ 81) / 81.0
end

end

using .HarmonicSeriesTerm81
using Test
@testset "HarmonicSeriesTerm81 Tests" begin
    @test isapprox(compute_harmonic_series_term_81(1.0), 1.0 / 81.0, atol=1e-7)
end
