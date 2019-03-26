-- 编写一个函数, 该函数返回当天中已经经过的秒数
-- 参数为时间戳

function secondsPassed(timeStamp)
    local curTimeTable = os.date("*t", timeStamp)
    curTimeTable.hour = 0
    curTimeTable.min = 0
    curTimeTable.sec = 0
    return timeStamp - os.time(curTimeTable)
end

print(secondsPassed(1553568108))