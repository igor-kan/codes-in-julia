const _GK15_X = Float64[
    0.0,
    0.20778495500789847, 0.40584515137739717, 0.58608723546769113,
    0.74153118559939444, 0.86486442335976907, 0.94910791234275852, 0.99145537112081264,
]
const _GK15_WK = Float64[
    0.20948214108472783,
    0.20443294007529889, 0.19035057806478541, 0.16900472663926790,
    0.14065325971552592, 0.10479001032225018, 0.06309209262997855, 0.02293532201052922,
]
const _G7_WG = Float64[
    0.41795918367346939,
    0.0, 0.38183005050511894, 0.0,
    0.27970539148927667, 0.0, 0.12948496616886969, 0.0,
]

function _gk15_panel(fn, a::Float64, b::Float64)
    mid = 0.5 * (a + b)
    half = 0.5 * (b - a)
    f0 = Float64(fn(mid))
    sum_k = _GK15_WK[1] * f0
    sum_g = _G7_WG[1] * f0
    for i in 2:8
        dx = half * _GK15_X[i]
        fs = Float64(fn(mid - dx)) + Float64(fn(mid + dx))
        sum_k += _GK15_WK[i] * fs
        sum_g += _G7_WG[i] * fs
    end
    ik = half * sum_k
    ig = half * sum_g
    return ik, abs(ik - ig)
end

function quad_gk(
    alg::GaussKronrod15,
    fn,
    a::Float64,
    b::Float64;
    rtol::Float64 = 1e-10,
    atol::Float64 = 1e-12,
)
    validate_gk_interval(a, b, rtol, atol)
    evals = Ref(0)
    splits = Ref(0)
    function recurse(lo::Float64, hi::Float64, depth::Int)::Tuple{Float64, Float64}
        ik, err = _gk15_panel(fn, lo, hi)
        evals[] += 15
        tol = max(atol, rtol * abs(ik))
        if err <= tol || depth >= alg.max_depth
            return ik, err
        end
        splits[] += 1
        mid = 0.5 * (lo + hi)
        l_val, l_err = recurse(lo, mid, depth + 1)
        r_val, r_err = recurse(mid, hi, depth + 1)
        return l_val + r_val, l_err + r_err
    end
    val, err = recurse(a, b, 0)
    return GkResult{Float64}(val, err, evals[], splits[])
end
