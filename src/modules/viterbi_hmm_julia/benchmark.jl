t0 = time_ns()
acc = 0.0
for _it in 1:50
  m = HmmSpec([0.5,0.5],[0.8 0.2;0.2 0.8],[0.8 0.2;0.2 0.8])
  obs = repeat([1,2], 40)
  acc += decode_map_sequence(LogViterbiDecoder(1e-300), m, obs).log_joint
end
ms = (time_ns() - t0) / 50e6
println("viterbi_hmm_julia ms=", round(ms; digits=4), " acc=", acc)
