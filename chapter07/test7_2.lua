-- 修改7_1, 使得当指定的输出文件已经存在时, 要求用户确认
-- 即对第三种情况做判定

function confirmDir(target)
    local curDir = io.popen("ls", "r")
    for data in curDir:lines() do
        if target == data then
            print("Enter Y/y to confirm, other letters to exit")
            while true do
                confirmData = io.read()
                if "y" == string.lower(confirmData) then
                    return
                else
                    os.exit()
                end
            end
        end
    end
    os.exit()
end

function dealStream(line, ...)
    local file = ...

    if file then
        tFile = assert(io.open(file, "a"))
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
    else if (file and not target) then -- 第二种情况
        pFile = assert(io.open(file, "r"))
        for line in pFile:lines() do
            dealStream(line)
        end
    else if (file and target) then -- 第三种情况
        pFile = assert(io.open(file, "r"))
        -- tFile = assert(io.open(target, "w"))
        confirmDir(target)
        for line in pFile:lines() do
            dealStream(line, target)
        end
    end
    end
    end
end


sortFileWords("test.txt", "target.txt")