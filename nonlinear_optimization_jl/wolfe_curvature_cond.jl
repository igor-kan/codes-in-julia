module WolfeCurvature
export wolfe_condition

function wolfe_condition(g_new::Float64, c2::Float64, g_old::Float64)
    return abs(g_new) <= c2 * abs(g_old)
end

end # module
