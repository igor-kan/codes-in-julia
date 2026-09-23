function fact(n)
    r = 1
    for i in 2:n
        r *= i
    end
    r
end

@assert fact(8) == 40320
println("PASS fact_8")
