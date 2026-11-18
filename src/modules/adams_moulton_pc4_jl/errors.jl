struct Abm4Error <: Exception
    code::Symbol
    msg::String
end

Base.showerror(io::IO, e::Abm4Error) = print(io, "Abm4Error(", e.code, "): ", e.msg)
error_code(e::Abm4Error) = e.code
