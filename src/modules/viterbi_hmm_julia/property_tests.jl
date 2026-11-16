using Test
m = HmmSpec([0.5, 0.5], [0.8 0.2; 0.2 0.8], [0.9 0.1; 0.1 0.9])
seqs = [[1, 1, 1, 2, 2, 2], [2, 2, 1, 1, 2]]
outs = batch_viterbi_decode(m, seqs)
for (obs, r) in zip(seqs, outs)
    @test verify_viterbi_bound(m, obs, r)
end
