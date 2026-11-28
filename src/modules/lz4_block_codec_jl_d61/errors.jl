struct Lz4Error <: Exception
    code::Symbol
    msg::String
end

Base.showerror(io::IO, e::Lz4Error) = print(io, "Lz4Error(", e.code, "): ", e.msg)
error_code(e::Lz4Error) = e.code
