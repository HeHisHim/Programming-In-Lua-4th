-- 编写一个函数, 该函数用于两个稀疏矩阵相加
-- matrix 矩阵

function matrix_add(matrix1, matrix2)
    local sumMatrix = {}
    for key, value in ipairs(matrix1) do
        local row = {}
        sumMatrix[key] = row
        for x, y in ipairs(value) do
            if (y or 0) and (matrix2[x] or 0) then -- 过滤nil, 是的话就赋值0
                row[x] = y + matrix2[key][x]
            end
        end
    end
    return sumMatrix
end

matrix1 = {}
for i = 1, 3 do
    row = {}
    matrix1[i] = row
    for j = 1, 5 do
        row[j] = j * 2
    end
end

matrix2 = {}
for i = 1, 3 do
    row = {}
    matrix2[i] = row
    for j = 1, 5 do
        row[j] = j + 2
    end
end

data = matrix_add(matrix1, matrix2)

for key, value in ipairs(data) do
    print("key:", key)
    for x, y in ipairs(value) do
        print("x, y: ", x, y)
    end
end
