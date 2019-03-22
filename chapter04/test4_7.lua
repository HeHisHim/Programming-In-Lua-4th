function ispali(str)
    -- str = string.gsub(str, " ", "") -- 忽略空格
    if string.reverse(str) == str then
        return true
    end
    return false
end

data = "step on no pets"

print(ispali(data))