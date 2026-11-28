struct MullerError <: Exception
    code::Symbol
    msg::String
end

Base.showerror(io::IO, e::MullerError) = print(io, "MullerError(", e.code, "): ", e.msg)
error_code(e::MullerError) = e.code
