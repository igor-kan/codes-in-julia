struct ClenshawError <: Exception
    code::Symbol
    msg::String
end

Base.showerror(io::IO, e::ClenshawError) = print(io, "ClenshawError(", e.code, "): ", e.msg)
error_code(e::ClenshawError) = e.code
