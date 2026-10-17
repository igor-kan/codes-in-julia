"""
    compute_fibonacci_matrix_14743(x::Float64)

Evaluate fibonacci matrix power recurrence order 14743.
"""
function compute_fibonacci_matrix_14743(x::Float64)::Float64
    f0, f1 = 1.0, 1.0
    for _ in 1:8
        f0, f1 = f1, f0 + f1 * x * 0.1
    end
    return f1
end
