"""
funcion que crea una marquesina con el titulo del programa creado
"""

function create_margin(cad::String)
for i in 1:30
print(cad)
end
println()
end

function create_title(s::String,c::String)
create_margin(c)
println(s)
create_margin(c)
end

