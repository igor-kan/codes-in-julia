struct SorError <: Exception
    code::Symbol
    msg::String
end

Base.showerror(io::IO, e::SorError) = print(io, "SorError(", e.code, "): ", e.msg)
