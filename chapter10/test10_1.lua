-- 编写一个split函数, 该函数接收两个参数, 第一个参数是字符串, 第二个参数是分隔符模式, 该函数返回值是分隔符分割后的原始字符串中每一部分的序列

function split(str, mode)
    local result = {}
    local curIndex = 1
    for x = 1, #str do
        if string.sub(str, x, x) == mode then
            result[#result + 1] = string.sub(str, curIndex, x - 1)
            curIndex = x + 1
        end
    end
    result[#result + 1] = string.sub(str, curIndex, #str)
    return result
end

t = split("a  whole  new  world", "  ")
print(table.concat(t))


