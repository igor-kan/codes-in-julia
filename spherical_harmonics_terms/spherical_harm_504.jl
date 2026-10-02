module SphericalHarmStep504

export compute_spherical_harm_504

function compute_spherical_harm_504(x::Float64)::Float64
    return (x ^ 5) / 10.0
end

end

using .SphericalHarmStep504
using Test
@testset "SphericalHarmStep504 Tests" begin
    @test isfinite(compute_spherical_harm_504(0.5))
end
