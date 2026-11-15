using LinearAlgebra

function bench_kalman()
    dx = 4
    model = LinearStateSpaceModel(0.95 * Matrix{Float64}(I, dx, dx), [1.0 0.0 0.0 0.0; 0.0 0.0 1.0 0.0], 0.05 * Matrix{Float64}(I, dx, dx), 0.2 * Matrix{Float64}(I, 2, 2))
    obs = ones(2, 1000)
    t0 = time_ns()
    out = run_kalman_filter(JosephKalmanFilter(true), model, obs, zeros(dx), Matrix{Float64}(I, dx, dx))
    dt = (time_ns() - t0) / 1e6
    @assert isfinite(out.log_likelihood)
    return dt
end
