struct DbscanError <: Exception
    code::Symbol
    msg::String
end

Base.showerror(io::IO, e::DbscanError) = print(io, "DbscanError(", e.code, "): ", e.msg)
error_code(e::DbscanError) = e.code
