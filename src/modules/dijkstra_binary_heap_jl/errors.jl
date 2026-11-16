abstract type DijkstraException <: Exception end

struct DijkstraDimensionError <: DijkstraException
    msg::String
end

struct DijkstraDomainError <: DijkstraException
    msg::String
end

Base.showerror(io::IO, e::DijkstraDimensionError) = print(io, "DijkstraDimensionError: ", e.msg)
Base.showerror(io::IO, e::DijkstraDomainError) = print(io, "DijkstraDomainError: ", e.msg)
