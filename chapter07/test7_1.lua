-- 编写一个程序, 该程序读取一个文本文件然后将每行的内容按照字母表顺序排序后重写该文件
-- 如果在调用时不带参数, 则从标准输入读取并向标准输出写入
-- 如果在调用时传入一个文件名作为参数, 则从该文件中读取并向标准输出写入
-- 如果在调用时传入两个文件名作为参数, 则从第一个文件读取并将结果写入到第二个文件中

function dealStream(line, ...)
    local file = ...

    if file then
        local tFile = assert(io.open(file, "a"))
    end
    local outputFile = {}
    line = string.lower(line)
    for x = 1, #line do
        outputFile[#outputFile + 1] = string.byte(string.sub(line, x, x))
    end
    table.sort(outputFile)
    for x = 1, #outputFile do
        if file then
            tFile:write(string.char(outputFile[x]))
        else
            io.write(string.char(outputFile[x]))
        end
    end
    if file then
        tFile:write("\n")
    else
        io.write("\n")
    end
end

function sortFileWords(...)
    local file, target = ...
    local outputFile = {}
    if not file then -- 第一种情况
        for line in io.lines() do
            dealStream(line)
        end
    else if (file and not target) then
        pFile = assert(io.open(file, "r"))
        for line in pFile:lines() do
            dealStream(line)
        end
    else if (file and target) then
        pFile = assert(io.open(file, "r"))
        tFile = assert(io.open(target, "w"))
        for line in pFile:lines() do
            dealStream(line, target)
        end
    end
    end
    end
end


sortFileWords("test.txt", "target.txt")