def all_in_one(x, xn):
    s = 0
    for i, xi in enumerate(xn):
        s += xi * x ** i
    return s


a = 3
b = 4
c = a + b
d = a - b
e = a * b
f = a / b
g = 2

fx = all_in_one(g, [a, b, c, d, e, f])
print(fx)


def test_a():
    assert fx > 10

test_a()
