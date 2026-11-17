struct WelchConfig
    seg_len::Int
    overlap::Int
end
hop_size(c::WelchConfig) = c.seg_len - c.overlap
