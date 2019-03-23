x = {1, 2, 3, 4}
y = {10, 20, 30, 40}

function insert_to(x, y, index)
    for key, value in ipairs(x) do
        table.insert(y, index + key - 1, value)
    end
end

insert_to(x, y, 2)

for key, value in ipairs(y) do
    print(key, value)
end