struct FftD56Error <: Exception
    code::Symbol
    msg::String
end

Base.showerror(io::IO, e::FftD56Error) = print(io, "FftD56Error(", e.code, "): ", e.msg)
error_code(e::FftD56Error) = e.code
