function lomb_scargle_power(times::Vector{Float64}, values::Vector{Float64}, omega::Float64)
    n = length(times)
    n == 0 && return 0.0
    omega == 0.0 && return 0.0
    ybar = sum(values) / n
    centered = values .- ybar
    energy = sum(abs2, centered)
    energy <= 0.0 && return 0.0
    s2w = 0.0
    c2w = 0.0
    for i in 1:n
        phase = 2.0 * omega * times[i]
        s2w += sin(phase)
        c2w += cos(phase)
    end
    tau = atan(s2w, c2w) / (2.0 * omega)
    yc = 0.0
    ys = 0.0
    cc = 0.0
    ss = 0.0
    for i in 1:n
        phase = omega * (times[i] - tau)
        co = cos(phase)
        si = sin(phase)
        yc += centered[i] * co
        ys += centered[i] * si
        cc += co * co
        ss += si * si
    end
    cc <= 1e-300 && return 0.0
    ss <= 1e-300 && return 0.0
    return 0.5 * ((yc * yc) / cc + (ys * ys) / ss)
end

function lomb_scargle_best(times::Vector{Float64}, values::Vector{Float64}, omegas::Vector{Float64})
    best = LombScargleResult(0.0, -1.0)
    for w in omegas
        p = lomb_scargle_power(times, values, w)
        if p > best.power
            best = LombScargleResult(w, p)
        end
    end
    return best
end
