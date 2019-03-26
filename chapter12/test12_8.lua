-- 编写一个函数, 该函数用于输出操作系统时区

function printTimeZone()
    print(os.date("%z", os.time()))
end

printTimeZone()