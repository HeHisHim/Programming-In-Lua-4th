data = {"hello", " ", "world", 1, 2, 3, "abc"}

function myConcat(data)
    result = ""
    for key, value in ipairs(data) do
        if type(value) == "string" then
            result = result .. value
        end
    end

    return result
end

print(myConcat(data))