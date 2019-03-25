-- 使用转义序列\x编写一个函数, 讲一个二进制字符串格式化为lua语言中的字符串常量

function escape(str)
    return (string.gsub(str, "(.)", function(x)
        return "\\x" .. string.format("%02X", string.byte(x))
    end
    ))
end

str = "\0\1hello\200"

print(escape(str))