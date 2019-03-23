polynomial = {1, 2, 3, 4, 5}
x = 2

function value_of_polynomial(polynomial, x)
    sum = 0
    for key, value in ipairs(polynomial) do
        sum = sum + value * math.pow(x, key - 1)
    end
    return math.tointeger(sum)
end

data = value_of_polynomial(polynomial, x)
print(data)