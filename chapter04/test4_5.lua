function remove(str, index, length)
    x = ""
    if 1 ~= index then
        x = string.sub(str, 1, index - 1)
    end
    y = string.sub(str, index + length, #str)
    return x .. y
end

str = "hello world"
index = 1
length = 4

print(remove(str, index, length))