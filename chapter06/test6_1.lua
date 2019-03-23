--编写一个函数, 参数是一个数组, 打印出该数组的所有元素

function printArray(array)
    for x = 1, #array do
        print(array[x])
    end
end

array = {1, 2, 3, 4, 5, 6}
printArray(array)