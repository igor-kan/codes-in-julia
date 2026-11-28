struct BwtError <: Exception
    code::Symbol
    msg::String
end

Base.showerror(io::IO, e::BwtError) = print(io, "BwtError(", e.code, "): ", e.msg)
error_code(e::BwtError) = e.code
