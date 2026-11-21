struct ChebD56Error <: Exception
    code::Symbol
    msg::String
end

Base.showerror(io::IO, e::ChebD56Error) = print(io, "ChebD56Error(", e.code, "): ", e.msg)
error_code(e::ChebD56Error) = e.code
