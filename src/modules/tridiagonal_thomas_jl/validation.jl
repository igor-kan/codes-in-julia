function validate_tridiag(sys::TridiagSystem, rhs::Vector, x::Vector)
    n = length(rhs)
    n >= 2 || throw(TridiagError(:dim, "n must be >= 2"))
    length(sys.d) == n && length(sys.dl) == n - 1 && length(sys.du) == n - 1 && length(x) == n ||
        throw(TridiagError(:dim, "diagonal length mismatch"))
end
