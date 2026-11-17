struct SgError <: Exception
    code::Symbol
    msg::String
end

Base.showerror(io::IO, e::SgError) = print(io, "SgError(", e.code, "): ", e.msg)
