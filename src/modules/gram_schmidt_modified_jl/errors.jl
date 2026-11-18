struct MgsQrError <: Exception
    code::Symbol
    msg::String
end

Base.showerror(io::IO, e::MgsQrError) = print(io, "MgsQrError(", e.code, "): ", e.msg)
error_code(e::MgsQrError) = e.code
