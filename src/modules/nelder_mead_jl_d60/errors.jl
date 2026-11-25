struct NelderMeadError <: Exception
    code::Symbol
    msg::String
end

Base.showerror(io::IO, e::NelderMeadError) = print(io, "NelderMeadError(", e.code, "): ", e.msg)
error_code(e::NelderMeadError) = e.code
