-- 八皇后问题

N = 8  -- 棋盘大小

-- 检查(n, c)是否会被攻击
function isplaceok(a, n, c)
    for i = 1, n - 1 do -- 对于每一个已经被放置的皇后
        if (c == a[i]) or -- 是否同一列
            (c - n == a[i] - i) or  -- 是否同一对角线
                (c + n == a[i] + i) then -- 是否同一对角线
            return false -- 位置会被攻击
        end
    end
    return true -- 位置不会被攻击
end

-- 打印棋盘
function printsolution(a)
    for i = 1, N do -- 对于每一行
        for j = 1, N do -- 对于每一列
            -- 输出 "X" 或 “-”， 外加一个空格
            io.write(a[i] == j and "X" or "-", " ")
        end
        io.write("\n")
    end
end

-- 把从 'n' 到 'N' 的所有皇后放在棋盘 'a' 上
function addqueen(a, n)
    if n > N then -- 是否所有的皇后都被放置好了
        printsolution(a)
    else -- 尝试放置第n个皇后
        for c = 1, N do
            if isplaceok(a, n, c) then
                a[n] = c -- 把第n个皇后放在列c上
                addqueen(a, n + 1)
            end
        end
    end
end


-- run
addqueen({}, 1)
