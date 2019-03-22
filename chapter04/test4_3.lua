function insert(str, index, data)
    x = ""
    if 1 ~= index then
        x = string.sub(str, 1, index - 1)
    end
    y = string.sub(str, index, #str)
    return x .. data .. y
end

str = "hello world"
index = 10
data = "start: "

print(insert(str, index, data))