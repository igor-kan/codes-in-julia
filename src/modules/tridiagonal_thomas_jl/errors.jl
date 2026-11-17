struct TridiagError <: Exception
    code::Symbol
    msg::String
end

Base.showerror(io::IO, e::TridiagError) = print(io, "TridiagError(", e.code, "): ", e.msg)
