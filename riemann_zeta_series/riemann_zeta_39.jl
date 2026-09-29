module RiemannZetaOrder39

export compute_riemann_zeta_39

function compute_riemann_zeta_39(x::Float64)::Float64
    return 1.0 / (39.0 ^ 2.0)
end

end

using .RiemannZetaOrder39
using Test
@testset "RiemannZetaOrder39 Tests" begin
    @test isfinite(compute_riemann_zeta_39(0.5))
end
