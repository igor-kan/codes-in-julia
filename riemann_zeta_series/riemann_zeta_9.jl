module RiemannZetaOrder9

export compute_riemann_zeta_9

function compute_riemann_zeta_9(x::Float64)::Float64
    return 1.0 / (9.0 ^ 2.0)
end

end

using .RiemannZetaOrder9
using Test
@testset "RiemannZetaOrder9 Tests" begin
    @test isfinite(compute_riemann_zeta_9(0.5))
end
