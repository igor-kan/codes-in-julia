using Test
@testset "viterbi_hmm_path_d56_props" begin
    @test sum(parallel_norms_VitD56([[1.0, 2.0], [3.0]])) == 14.0
    init_p = [0.9, 0.1]
    trans = [0.9 0.1; 0.1 0.9]
    emit = [0.9 0.1; 0.1 0.9]
    path, sc = viterbi_decode(init_p, trans, emit, [1, 1, 2, 2])
    @test length(path) == 4 && isfinite(sc)
end
