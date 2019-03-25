-- 忽略长度小于4个字母的单词
-- 忽略一个文本文件中要忽略的单词列表

local counter = {}

for line in io.lines() do
    for word in string.gmatch(line, "%w+") do
        if #word >= 4 and is_InWordsTxt(word) then
            counter[word] = (counter[word] or 0) + 1
        end
    end
end

function is_InWordsTxt(word)
    for line in io.lines("test.txt", "r") do
        if line == word then
            return false
        end
    end
    return true
end