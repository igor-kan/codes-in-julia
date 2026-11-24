struct Rk4JlD59Error <: Exception
    code::Symbol
    msg::String
end

Base.showerror(io::IO, e::Rk4JlD59Error) = print(io, "Rk4JlD59Error(", e.code, "): ", e.msg)
error_code(e::Rk4JlD59Error) = e.code
