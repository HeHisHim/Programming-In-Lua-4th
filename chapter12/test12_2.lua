-- 编写一个函数, 该函数返回指定日期是星期几
-- 参数为时间戳

function getWhichWeek(timeStamp)
    curTimeTable = os.date("*t", timeStamp)
    return curTimeTable.wday
end

print(getWhichWeek(1553567556))