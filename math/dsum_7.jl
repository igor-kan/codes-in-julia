function dsum(n)
    s = 0
    while n > 0
        s += n % 10
        n ÷= 10
    end
    s
end

@assert dsum(7) == 7
println("PASS dsum_7")
