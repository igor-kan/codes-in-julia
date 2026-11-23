struct TdmaD58Error <: Exception
    code::Symbol
    msg::String
end

Base.showerror(io::IO, e::TdmaD58Error) = print(io, "TdmaD58Error(", e.code, "): ", e.msg)
error_code(e::TdmaD58Error) = e.code
