include("./Encabezados.jl")



create_title("Arreglos","#" )


ar=collect(1:2:20)

function pertenece_val(num::Number)
ar=collect(1:2:20)
for i in 1:10
	if ar[i]== num
		println("el numero $num pertenece al arreglo")
end
end
end
println("Un arreglo de elementos:$ar")

println("El tamaño del arreglo es:", length(ar))
println("El arreglo inverso es:",ar[end:-1:begin])
println("El tipo de datos del arreglo es:", typeof(ar))
pertenece_val(8)
pertenece_val(25)





function fizzbuzz(xs=1:10, fizz="Fizz", buzz="Buzz")
    for i in xs
        if i % 15 == 0
            println(fizz, buzz)
        elseif i % 3 == 0
            println(fizz)
        elseif i % 5 == 0
            println(buzz)
        else
            println(i)
        end
    end
end
	