from matplotlib.pypplot import plot

with open('input.txt', 'r') as file:
    a = float(file.readline().strip().split())
    b = float(file.readline().strip().split())
    eps = float(file.readline().strip())
    l = float(file.readline().strip())

    k = 0
    f = lambda x: 2 * x**2 - 12 * x
    while True:
        y = (a + b - eps) / 2
        z = (a + b + eps) / 2
        f1 = f(y)
        f2 = f(z)
        if f1 <= f2:
            b = z
        else:
            a = y
        if abs(b - a) < l:
            x = (a + b) / 2
            break
        else:
            k += 1
            
print('Answer is')
print(f'X is {x}, f(x) = {f(x)}')
print(f'N is {2*(k+1)}')
print(f'Interval is [{a}, {b}]')

plot(y, x)
