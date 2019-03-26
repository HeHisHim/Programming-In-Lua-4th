-- 如何判断一个指定整数是不是2的整数次幂

function ispowerOfTwo(num)
    local begin = os.clock()
    for x = 0, math.huge do
        if math.pow(2, x) > num then
            print(string.format("%.6f", os.clock() - begin))
            return false
        elseif math.pow(2, x) == num then
            print(string.format("%.6f", os.clock() - begin))
            return true
        end
    end
end

print(ispowerOfTwo(tonumber(arg[1])))