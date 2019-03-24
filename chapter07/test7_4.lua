-- 编写一个程序, 该程序输出一个文本文件的最后一行
-- 当文件较大可以使用seek, 尝试避免读取整个文件

function outputLastline(file)
    local pFile = assert(io.input(file, "r"))
    local size = pFile:seek("end") -- 定位到文件句柄最后
    local index = 1

    while index <= size do
        pFile:seek("end", -1 * index) -- 每次循环回退1个字节
        if "\n" == pFile:read("L") then
            if 1 ~= index then -- 如果回退的第一个字节是换行符, 就不管
                print(pFile:read("l")) -- 文件已经到达倒数的第一个换行符, 直接打印
                return
            end
        end
        index = index + 1
    end

    if index >= size then -- 如果只有一行且没有换行符   index会大于size
        pFile:seek("set")
        print(pFile:read("l"))
    end
 

end

outputLastline("target.txt")