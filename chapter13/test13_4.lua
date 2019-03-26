-- 编写一个函数, 该函数用于计算指定整数的汉明权重(一个数的汉明权重是其二进制表示中1的个数)

function hammingWeight(num)
    local sum_one = 0
    str = string.pack("i", num)
    for x = 1, #str do
        data = tonumber((string.unpack("B", str, x)))
        while 0 ~= data do
            if 1 == data % 2 then -- 取模为1 计数就 +1
                sum_one = sum_one + 1
            end
            data = data // 2
        end
    end
    return sum_one
end

print(hammingWeight(10))