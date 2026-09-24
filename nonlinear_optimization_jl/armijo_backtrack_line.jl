module ArmijoLine
export armijo_condition

function armijo_condition(f_new::Float64, f_old::Float64, c1::Float64, alpha::Float64, dir_deriv::Float64)
    return f_new <= f_old + c1 * alpha * dir_deriv
end

end # module
