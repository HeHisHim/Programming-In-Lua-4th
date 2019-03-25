function transliterate(str, data)
    return (string.gsub(str, ".", function (x)
        if data[x] then
            return data[x]
        elseif data[x] == false then
            return ""
        else
            return x
        end
    end
    ))
end

data = {["a"] = "b", ["x"] = "y", ["c"] = false}
str = "adsab[[[]axx"

print(transliterate(str, data))