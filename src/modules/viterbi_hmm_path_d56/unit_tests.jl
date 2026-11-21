using Test
@testset "viterbi_hmm_path_d56_unit" begin
    @test validate_nonempty_VitD56([1.0]) == 1
    init_p = [0.6, 0.4]
    trans = [0.7 0.3; 0.4 0.6]
    emit = [0.5 0.4 0.1; 0.1 0.3 0.6]
    path, _ = viterbi_decode(init_p, trans, emit, [1, 2, 3])
    @test path == [1, 1, 2]
end
