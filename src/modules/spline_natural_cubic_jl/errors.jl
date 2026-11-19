struct CubicSplineError <: Exception
    code::Symbol
    msg::String
end

Base.showerror(io::IO, e::CubicSplineError) = print(io, "CubicSplineError(", e.code, "): ", e.msg)
error_code(e::CubicSplineError) = e.code
