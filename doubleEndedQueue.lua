-- 用lua实现一个双端队列

function deque()
    return {first = 0, last = -1}
end

function pushHead(dList, value)
    dList.first = dList.first - 1 -- 从头部加入则first -= 1, 第一个头元素从 索引-1 开始
    dList[dList.first] = value
end

function pushBack(dList, value)
    dList.last = dList.last + 1 -- 从尾部加入则last += 1, 第一个尾元素从 索引1 开始
    dList[dList.last] = value
end

-- 队列里面有值的话, first 一定小于等于 last
-- 尝试从头尾插入两个值, 观察first和last的变化

function popHead(dList)
    if dList.first > dList.last then
        return
    end
    local value = dList[dList.first]
    dList[dList.first] = nil -- 垃圾回收
    dList.first = dList.first + 1
    return value
end

function popBack(dList)
    if dList.first > dList.last then
        return
    end
    local value = dList[dList.last]
    dList[dList.last] = nil -- 垃圾回收
    dList.last = dList.last - 1

    return value
end

function printDeque(dList)
    for x = dList.first, dList.last do
        print(dList[x])
    end
end

