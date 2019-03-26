-- 编写一个函数, 该函数返回指定日期和时间后恰好一个月的日期和时间
-- 参数为时间戳

function nextMonth(timeData)
    local curTimeTable = os.date("*t", timeData)
    curTimeTable.month = curTimeTable.month + 1
    nextTimeStamp = os.time(curTimeTable)
    nextTimeStr = os.date("%Y-%m-%d - %X", nextTimeStamp)

    return nextTimeStamp, nextTimeStr
end

x, y = nextMonth(1553567230)
print(x, y)