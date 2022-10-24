#Variables

#Entero
entero = 999
println(entero)
println(typeof(entero)) 

#Flotante
flotante = 23.45
println(flotante)
println(typeof(flotante))

#String
cadenaCaracteres = "Dibit Learning"
println(cadenaCaracteres)
println(typeof(cadenaCaracteres))

#Caracter
caracter = 'K'
println(caracter)
println(typeof(caracter))

#Bool
booleano = true
println(booleano)
println(typeof(booleano))

#Caracteres especiales UTF-8
letrasRaras = "人人生而自由，在尊严和权利上一律平等。"
println(letrasRaras)
println(typeof(letrasRaras))

#Unicode names are allowed (UTF-8)
生而自由 = "Aprender es bonito"
println(生而自由)
println(typeof(生而自由))

#Constantes
const anioNacimiento = "2020"
println(anioNacimiento)
println(typeof(anioNacimiento))

#const es para el tipo de dato
anioNacimiento = "2021"
println(anioNacimiento)
println(typeof(anioNacimiento))

#¿Se puede redefinir el tipo de dato?
entero = "Ahora es string"
println(entero)
println(typeof(entero))

#anioNacimiento = 2021 No se puede dar
#const evita que se cambie el tipo de dato de una variable

#¿32-bit o 64-bit
println(Sys.WORD_SIZE)

#nombre::String = "Agreda"

#Fuera del alcance de una función
#variable::[tipo de dato] = [dato]
#Optimización
function prueba()
    nombre::String = "Agreda"
    println(nombre)
    println(typeof(nombre))
end

prueba()
