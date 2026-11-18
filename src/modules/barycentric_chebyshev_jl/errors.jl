struct BaryChebError <: Exception
    code::Symbol
    msg::String
end

Base.showerror(io::IO, e::BaryChebError) = print(io, "BaryChebError(", e.code, "): ", e.msg)
error_code(e::BaryChebError) = e.code
