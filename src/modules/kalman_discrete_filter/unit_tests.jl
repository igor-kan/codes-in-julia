using Test, LinearAlgebra

@testset "2D Constant-Velocity Tracker" begin
    F = [1.0 1.0; 0.0 1.0]
    H = [1.0 0.0]
    Q = 0.05 * Matrix{Float64}(I, 2, 2)
    R = fill(0.5, 1, 1)
    model = LinearStateSpaceModel(F, H, Q, R)
    obs = reshape(collect(1.0:20.0), 1, 20)
    out = run_kalman_filter(JosephKalmanFilter(true), model, obs, [0.0, 1.0], 5.0 * Matrix{Float64}(I, 2, 2))
    @test verify_kalman_psd(out)
    @test abs(out.states[2, end] - 1.0) < 0.25
end
