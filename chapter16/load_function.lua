-- load函数与普通函数的区别

i = 32 -- 全局
local i = 0

x = load("i = i + 1; print(i)")

y = function() i = i + 1; print(i) end

x() -- 33
y() -- 1

-- 函数y操作局部变量i, 但是函数x操作的是全局变量i
-- 这是因为load函数总是在全局环境中编译代码段