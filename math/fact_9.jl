function fact(n)
    r = 1
    for i in 2:n
        r *= i
    end
    r
end

@assert fact(9) == 362880
println("PASS fact_9")
