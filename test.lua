lib = {}

lib.foo = function (x, y) return x + y end
lib.goo = function (x, y) return x - y end
lib.hoo = function (x, y) return x == y end

print(lib.foo(1, 2))
print(lib.goo(2, 3))
print(lib.hoo(2, 2))