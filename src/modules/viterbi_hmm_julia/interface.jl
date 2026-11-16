abstract type AbstractSequenceDecoder end

struct LogViterbiDecoder <: AbstractSequenceDecoder
    floor_eps::Float64
end

function decode_map_sequence end
function forward_log_likelihood end
