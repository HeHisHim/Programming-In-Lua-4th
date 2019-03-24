-- 能否使用函数os.execute来改变Lua脚本的当前目录

-- print(os.execute("cd /Users/macbook"))

-- print(io.popen("cd /Users/macbook"))

-- 不能, 不可以改变正在运行文件的路径, 上面函数返回 true exit 0
-- 同理, 用popen也不行