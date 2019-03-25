-- 忽略长度小于4个字母的单词

local counter = {}

for line in io.lines() do
    for word in string.gmatch(line, "%w+") do
        if #word >= 4 then
            counter[word] = (counter[word] or 0) + 1
        end
    end
end 