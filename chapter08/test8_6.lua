function getlabel()
    return function () 
        -- goto L1
 7        return 0
    end
    -- :: L1 :: -- 这个L1标签在上面的匿名函数外，因为goto不能跳出执行的函数, 所有这里会报错
    --     return 0
end

function f(n)
    if 0 == n then return getlabel()
    else
        local res = f(n - 1)
        print(n)
        return res
    end
end

x = f(0)
x()