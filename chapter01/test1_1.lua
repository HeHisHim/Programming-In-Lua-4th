function fact(n) -- 小于0会栈溢出
    if 0 > n then
        return nil
    end

    if 0 == n then
        return 1
    else
        return n * fact(n -  1)
    end
end