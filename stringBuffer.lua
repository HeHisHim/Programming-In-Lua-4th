-- 一段处理字符串的程序, 比如逐行读取一个文件, 典型代码如下

-- 这种处理方法效率低, 因为每次..连接都会创建一个新字符串, 然后将原有字符串复制过去
-- 只要字符串是不可变值, 就会有类似的问题
function readLines()
    local buff = ""

    for line in io.lines() do
        if "q" == line then
            break
        end
        buff = buff .. line .. "\n"
    end

    return buff
end

-- 使用table.concat来处理, 性能会好很多
function readLines()
    local buff = {}
    for line in io.lines() do
        if "q" == line then
            break
        end
        buff[#buff + 1] = line .. "\n"
    end
    local str = table.concat(buff)

    return str
end

-- table.concat有第二个参数指定分隔符
function readLines()
    local buff = {}
    for line in io.lines() do
        if "q" == line then
            break
        end
        buff[#buff + 1] = line
    end
    local str = table.concat(buff, "\n")

    return str
end

print(readLines())