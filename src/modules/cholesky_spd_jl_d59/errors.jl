struct CholD59Error <: Exception
    code::Symbol
    msg::String
end

Base.showerror(io::IO, e::CholD59Error) = print(io, "CholD59Error(", e.code, "): ", e.msg)
error_code(e::CholD59Error) = e.code
