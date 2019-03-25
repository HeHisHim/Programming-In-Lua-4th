-- 使用闭包编写一个 以多项式(使用表表示)和值x为参数, 返回结果为对应多项式的值
function newpoly(data)
    return function(x)
        local sum = 0
        for key, value in ipairs(data) do
            sum = sum + value * x ^ (key - 1)
        end
        return math.tointeger(sum)
    end
end

f = newpoly({3, 0, 1})
print(f(0))
print(f(5))
print(f(10))