function fact(n)
    r = 1
    for i in 2:n
        r *= i
    end
    r
end

@assert fact(6) == 720
println("PASS fact_6")
