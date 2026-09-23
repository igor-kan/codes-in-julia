function catalan(n)
    c = 1
    for k in 1:n
        c = c * 2 * (2k - 1) ÷ (k + 1)
    end
    c
end

@assert catalan(4) == 14
println("PASS catalan_4")
