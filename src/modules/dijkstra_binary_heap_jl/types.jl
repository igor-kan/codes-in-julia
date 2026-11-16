struct WeightedEdge{W<:Real}
    to::Int
    weight::W
end

struct ShortestPathTree{W<:Real}
    dist::Vector{W}
    parent::Vector{Int}
    source::Int
end
