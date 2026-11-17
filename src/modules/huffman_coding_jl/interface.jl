huff_freq(n::HuffLeaf) = n.freq
huff_freq(n::HuffBranch) = n.freq
is_huff_leaf(::HuffLeaf) = true
is_huff_leaf(::HuffNode) = false
node_count(::HuffLeaf) = 1
node_count(n::HuffBranch) = 1 + node_count(n.left) + node_count(n.right)
