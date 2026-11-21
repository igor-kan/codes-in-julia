t0 = time_ns()
sink = 0.0
for _ in 1:100
    sink += viterbi_decode([0.6, 0.4], [0.7 0.3; 0.4 0.6], [0.5 0.5; 0.2 0.8], [1, 2])[2]
end
ms = (time_ns() - t0) / 1e6
println("viterbi_hmm_path_d56 ms=", ms, " sink=", sink)
