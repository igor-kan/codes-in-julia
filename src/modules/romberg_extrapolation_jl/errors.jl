struct RombergError <: Exception
    code::Symbol
    msg::String
end

Base.showerror(io::IO, e::RombergError) = print(io, "RombergError(", e.code, "): ", e.msg)
