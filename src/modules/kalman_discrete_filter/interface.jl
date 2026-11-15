abstract type AbstractStateFilter end

struct JosephKalmanFilter <: AbstractStateFilter
    symmetrize_cov::Bool
end

function run_kalman_filter end
