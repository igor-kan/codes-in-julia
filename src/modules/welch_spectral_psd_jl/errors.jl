struct WelchError <: Exception
    code::Symbol
    msg::String
end

Base.showerror(io::IO, e::WelchError) = print(io, "WelchError(", e.code, "): ", e.msg)
