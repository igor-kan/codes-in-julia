struct ApspError <: Exception
    code::Symbol
    msg::String
end

Base.showerror(io::IO, e::ApspError) = print(io, "ApspError(", e.code, "): ", e.msg)
