-- 编写一个函数, 该函数用于打乱一个指定的数组
function shuffle(array)
    math.randomseed(os.time())
    for i = 1, #array do
        local randnum = math.random(#array)
        local sp = array[i]
        array[i] = array[randnum]
        array[randnum] = sp
    end
end

array = {1, 2, 3, 4, 5, 6, 7, 8, 9}
shuffle(array)
print(table.unpack(array))