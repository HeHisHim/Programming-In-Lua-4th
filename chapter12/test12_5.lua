-- 编写一个函数, 该函数用于计算两个指定日期之间相差的天数
-- 参数为时间戳

function diffDay(data1, data2)
    local tmpData = data1
    if data1 <= data2 then data1 = data2; data2 = tmpData end
    local diff = os.difftime(data1, data2)
    return diff / (24 * 3600)
end

print(diffDay(1553569449, 1522033449))