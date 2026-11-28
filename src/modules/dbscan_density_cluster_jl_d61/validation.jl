function validate_nonempty_Dbscan(xs::AbstractArray)
    if isempty(xs)
        throw(DbscanError(:empty, "input array must be non-empty"))
    end
    return length(xs)
end
