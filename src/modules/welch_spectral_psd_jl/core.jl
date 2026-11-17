function hann_window(m::Int)
    return [0.5 * (1.0 - cos(2.0 * pi * (k - 1) / (m - 1))) for k in 1:m]
end

function welch_psd(est::WelchEstimator, x::Vector{Float64})
    m = est.cfg.seg_len
    hop = m - est.cfg.overlap
    validate_welch(length(x), m, est.cfg.overlap)
    win = hann_window(m)
    norm = sum(abs2, win)
    nbins = div(m, 2) + 1
    psd = zeros(Float64, nbins)
    count = 0
    s = 1
    while s + m - 1 <= length(x)
        seg = @view x[s:(s + m - 1)]
        for k in 0:(nbins - 1)
            re = 0.0
            im = 0.0
            for n in 0:(m - 1)
                ang = -2.0 * pi * k * n / m
                wval = seg[n + 1] * win[n + 1]
                re += wval * cos(ang)
                im += wval * sin(ang)
            end
            psd[k + 1] += (re * re + im * im) / norm
        end
        count += 1
        s += hop
    end
    return psd ./ max(count, 1)
end
