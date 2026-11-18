struct Gk37Error <: Exception
    code::Symbol
    msg::String
end

Base.showerror(io::IO, e::Gk37Error) = print(io, "Gk37Error(", e.code, "): ", e.msg)
error_code(e::Gk37Error) = e.code
