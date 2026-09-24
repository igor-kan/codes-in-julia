module PendulumFreq
export nonlinear_pendulum_omega

function nonlinear_pendulum_omega(omega0::Float64, theta0::Float64)
    return omega0 * (1.0 - (theta0^2) / 16.0)
end

end # module
