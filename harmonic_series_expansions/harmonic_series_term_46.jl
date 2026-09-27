module HarmonicSeriesTerm46

export compute_harmonic_series_term_46

function compute_harmonic_series_term_46(x::Float64)
    return (x ^ 46) / 46.0
end

end

using .HarmonicSeriesTerm46
using Test
@testset "HarmonicSeriesTerm46 Tests" begin
    @test isapprox(compute_harmonic_series_term_46(1.0), 1.0 / 46.0, atol=1e-7)
end
