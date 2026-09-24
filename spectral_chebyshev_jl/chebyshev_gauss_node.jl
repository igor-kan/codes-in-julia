module ChebyshevNodes
export gauss_lobatto_node

function gauss_lobatto_node(j::Int, n::Int)
    return cos(pi * j / n)
end

end # module
