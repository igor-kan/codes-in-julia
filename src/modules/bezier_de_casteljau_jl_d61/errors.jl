struct BezierError <: Exception
    code::Symbol
    msg::String
end

Base.showerror(io::IO, e::BezierError) = print(io, "BezierError(", e.code, "): ", e.msg)
error_code(e::BezierError) = e.code
