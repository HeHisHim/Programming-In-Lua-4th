-- 修改7_4, 使用参数n 输出一个文本文件的最后n行
-- 当文件较大可以使用seek, 尝试避免读取整个文件

function outputLastline(file, n)
    local pFile = assert(io.input(file, "r"))
    local size = pFile:seek("end") -- 定位到文件句柄最后
    local index = 1
    local count = 0 -- 对count + 1 直到 n

    while index <= size do
        pFile:seek("end", -1 * index) -- 每次循环回退1个字节
        if "\n" == pFile:read("L") then
            count = count + 1
            if n == count then
                print(pFile:read("a"))
                return
            end
        end
        index = index + 1
    end

    if index >= size then -- 如果只有一行且没有换行符   index会大于size
        pFile:seek("set")
        print(pFile:read("a"))
    end
 

end

outputLastline("target.txt", 1)