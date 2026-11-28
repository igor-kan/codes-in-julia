function de_casteljau(ctrl::Matrix{Float64}, t::Float64)
    n = size(ctrl, 1)
    pts = copy(ctrl)
    for r in 1:(n - 1)
        for i in 1:(n - r)
            pts[i, :] = (1.0 - t) .* pts[i, :] .+ t .* pts[i + 1, :]
        end
    end
    return pts[1, :]
end
