struct SimpD58Error <: Exception
    code::Symbol
    msg::String
end

Base.showerror(io::IO, e::SimpD58Error) = print(io, "SimpD58Error(", e.code, "): ", e.msg)
error_code(e::SimpD58Error) = e.code
