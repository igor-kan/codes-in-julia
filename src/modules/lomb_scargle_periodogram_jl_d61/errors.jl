struct LombError <: Exception
    code::Symbol
    msg::String
end

Base.showerror(io::IO, e::LombError) = print(io, "LombError(", e.code, "): ", e.msg)
error_code(e::LombError) = e.code
