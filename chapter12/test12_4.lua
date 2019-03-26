-- 编写一个函数, 参数为年, 返回该年中第一个星期五是第几天

function firstFriday(year_data)
    local timeTable = {year = year_data, month = 1, day = 1}
    local curWday = os.date("*t", os.time(timeTable)).wday
    return 6 - curWday % 7 + 1
end

print(firstFriday(2019))