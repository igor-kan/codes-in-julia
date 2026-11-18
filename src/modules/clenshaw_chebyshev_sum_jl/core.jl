function eval_clenshaw(c::Vector{Float64}, x::Float64)
    b_kp1 = 0.0
    b_kp2 = 0.0
    for k in length(c):-1:2
        b_k = c[k] + 2.0 * x * b_kp1 - b_kp2
        b_kp2 = b_kp1
        b_kp1 = b_k
    end
    return c[1] + x * b_kp1 - b_kp2
end
