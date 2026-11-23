struct LuD58Error <: Exception
    code::Symbol
    msg::String
end

Base.showerror(io::IO, e::LuD58Error) = print(io, "LuD58Error(", e.code, "): ", e.msg)
error_code(e::LuD58Error) = e.code
