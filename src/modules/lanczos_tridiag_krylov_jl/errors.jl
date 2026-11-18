struct LanczosTrError <: Exception
    code::Symbol
    msg::String
end

Base.showerror(io::IO, e::LanczosTrError) = print(io, "LanczosTrError(", e.code, "): ", e.msg)
error_code(e::LanczosTrError) = e.code
