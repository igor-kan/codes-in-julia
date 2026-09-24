module ChebyshevDiff
export cheb_diag_d00

function cheb_diag_d00(n::Int)
    return (2.0 * n^2 + 1.0) / 6.0
end

end # module
