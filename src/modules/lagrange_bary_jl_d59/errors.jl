struct BaryD59Error <: Exception
    code::Symbol
    msg::String
end

Base.showerror(io::IO, e::BaryD59Error) = print(io, "BaryD59Error(", e.code, "): ", e.msg)
error_code(e::BaryD59Error) = e.code
