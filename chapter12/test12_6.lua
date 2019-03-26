-- 编写一个函数, 该函数用于计算两个指定日期之间相差的月份
-- 参数为时间戳

function diffDay(data1, data2)
    local tmpData = data1
    if data1 <= data2 then data1 = data2; data2 = tmpData end

    local timeTable1 = os.date("*t", data1)
    local timeTable2 = os.date("*t", data2)

    local yearDiff = (timeTable1.year - timeTable2.year) * 12
    local monthDiff = timeTable1.month - timeTable2.month

    return yearDiff + monthDiff
end

print(diffDay(1553570012, 1488078812))