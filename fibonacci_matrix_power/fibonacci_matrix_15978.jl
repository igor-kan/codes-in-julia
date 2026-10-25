"""
    compute_fibonacci_matrix_15978(x::Float64)

Evaluate fibonacci matrix power recurrence order 15978.
"""
function compute_fibonacci_matrix_15978(x::Float64)::Float64
    f0, f1 = 1.0, 1.0
    for _ in 1:7
        f0, f1 = f1, f0 + f1 * x * 0.1
    end
    return f1
end
