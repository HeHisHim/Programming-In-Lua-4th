a = 3.14
b = 0.01

x = a // b
y = x * b
z = a - y

print(x, y, z)
print(a % b)
data = a % b == a - ((a // b) * b)
print(data)