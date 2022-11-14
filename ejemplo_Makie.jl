using DynamicalSystems, InteractiveDynamics, GLMakie
using OrdinaryDiffEq: Tsit5
using LinearAlgebra: dot, norm

ds = Systems.thomas_cyclical(b = 0.2)
u0s = ([3, 1, 1.], [1, 3, 1.], [1, 1, 3.])
diffeq = (alg = Tsit5(), adaptive = false, dt = 0.05)

fig, obs, step, = interactive_evolution(
    ds, u0s; tail = 1000, diffeq, add_controls = false, tsidxs = nothing,
    # Replace this with [1, 2, 3] if using GLMakie (looks much cooler ;))
    idxs = [1, 2, 3],
    figure = (resolution = (1200, 600),),
)
axss = content(fig[1,1][1,1])
axss.title = "State space (projected)"

# Plot some stuff on a second axis that use `obs`
# Plot distance of trajectory from symmetry line
ax = Axis(fig[1,1][1,2]; xlabel = "points", ylabel = "distance")
function distance_from_symmetry(u)
    v = 0*SVector(u...) .+ 1/√(length(u))
    t = dot(v, u)
    return norm(u - t*v)
end
for (i, ob) in enumerate(obs)
    y = lift(x -> distance_from_symmetry.(x) .+ 4(i-1), ob)
    x = 1:length(y[])
    lines!(ax, x, y; color = JULIADYNAMICS_COLORS[i])
end
ax.limits = ((0, 1000), (0, 12))

fig
display(fig)
sleep(10)