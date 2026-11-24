struct SecantD59Error <: Exception
    code::Symbol
    msg::String
end

Base.showerror(io::IO, e::SecantD59Error) = print(io, "SecantD59Error(", e.code, "): ", e.msg)
error_code(e::SecantD59Error) = e.code
