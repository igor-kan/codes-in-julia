struct HuffError <: Exception
    code::Symbol
    msg::String
end

Base.showerror(io::IO, e::HuffError) = print(io, "HuffError(", e.code, "): ", e.msg)
