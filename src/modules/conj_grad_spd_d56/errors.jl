struct CgD56Error <: Exception
    code::Symbol
    msg::String
end

Base.showerror(io::IO, e::CgD56Error) = print(io, "CgD56Error(", e.code, "): ", e.msg)
error_code(e::CgD56Error) = e.code
