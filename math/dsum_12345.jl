function dsum(n)
    s = 0
    while n > 0
        s += n % 10
        n ÷= 10
    end
    s
end

@assert dsum(12345) == 15
println("PASS dsum_12345")
