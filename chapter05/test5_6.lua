a = {}
local num = 0
a[1] = 1
a[2] = 2
a[3] = 3
a[4] = 4
a[5] = 5


function ifSequence(arr)
    for key, value in ipairs(arr) do
        num = num + 1
    end
    if num == #a then
        return true
    end

    return false
end

print(ifSequence(a))
