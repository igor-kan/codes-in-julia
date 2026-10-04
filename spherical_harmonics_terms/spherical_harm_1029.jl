module SphericalHarmStep1029

export compute_spherical_harm_1029

function compute_spherical_harm_1029(x::Float64)::Float64
    return (x ^ 5) / 10.0
end

end

using .SphericalHarmStep1029
using Test
@testset "SphericalHarmStep1029 Tests" begin
    @test isfinite(compute_spherical_harm_1029(0.5))
end
