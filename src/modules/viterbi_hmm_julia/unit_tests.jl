using Test
m = HmmSpec([0.6, 0.4], [0.7 0.3; 0.4 0.6], [0.5 0.4 0.1; 0.1 0.3 0.6])
obs = [1, 2, 3, 3, 1]
res = decode_map_sequence(LogViterbiDecoder(1e-300), m, obs)
@test verify_viterbi_bound(m, obs, res)
