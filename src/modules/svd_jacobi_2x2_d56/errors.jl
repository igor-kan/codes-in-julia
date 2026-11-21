struct JacobiD56Error <: Exception
    code::Symbol
    msg::String
end

Base.showerror(io::IO, e::JacobiD56Error) = print(io, "JacobiD56Error(", e.code, "): ", e.msg)
error_code(e::JacobiD56Error) = e.code
