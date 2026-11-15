using LinearAlgebra

function run_kalman_filter(
    flt::JosephKalmanFilter,
    model::LinearStateSpaceModel{T},
    obs::Matrix{T},
    x0::Vector{T},
    P0::Matrix{T},
) where {T<:AbstractFloat}
    validate_kalman_model(model, obs, x0, P0)
    dx = length(x0)
    T_steps = size(obs, 2)
    states = zeros(T, dx, T_steps)
    x = copy(x0)
    P = copy(P0)
    Id = Matrix{T}(I, dx, dx)
    ll = zero(T)

    for t in 1:T_steps
        x_pred = model.F * x
        P_pred = model.F * P * transpose(model.F) + model.Q
        y = obs[:, t]
        nu = y - model.H * x_pred
        S = model.H * P_pred * transpose(model.H) + model.R
        S_sym = T(0.5) .* (S + transpose(S))
        K = P_pred * transpose(model.H) / S_sym
        x = x_pred + K * nu
        IKH = Id - K * model.H
        P = IKH * P_pred * transpose(IKH) + K * model.R * transpose(K)
        if flt.symmetrize_cov
            P = T(0.5) .* (P + transpose(P))
        end
        states[:, t] = x
        dy = size(model.R, 1)
        ll -= T(0.5) * (dy * log(T(2.0 * pi)) + logdet(S_sym) + dot(nu, S_sym \ nu))
    end
    return KalmanFilterOutput{T}(states, P, ll)
end
