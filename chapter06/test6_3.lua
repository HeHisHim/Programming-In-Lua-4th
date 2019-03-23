-- 编写一个函数, 该函数的参数为可变参数的一组值, 返回值为除最后一个元素之外的其他所有值

function printOtherParameter(...)
    local data = table.pack(...)
    table.remove(data, #data)
    return table.unpack(data)
end

x = {1, 2, 3}
print(printOtherParameter(table.unpack(x)))