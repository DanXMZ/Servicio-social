#import Pkg
#Pkg.add("GLMakie")
using GLMakie
f = Figure()
ax = Axis(f[1, 1])
x = range(0, 10, length=100)
y = sin.(x)
lines!(ax, x, y)
f
display(f)
sleep(15)