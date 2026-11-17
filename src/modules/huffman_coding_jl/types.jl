abstract type HuffNode end
struct HuffLeaf <: HuffNode
    sym::UInt8
    freq::Int
end
struct HuffBranch <: HuffNode
    freq::Int
    left::HuffNode
    right::HuffNode
end