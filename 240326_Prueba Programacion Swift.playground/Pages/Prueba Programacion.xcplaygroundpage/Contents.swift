import UIKit
var greeting = "Hello, playground"
print(greeting)

//MultilineString
var multiline = """
Como estas?
Yo estoy bien
"""
print(multiline)

//String Template - \()
var num1 = 1
var num2 = 2
print("Mi primer número es \(num1) y el segundo es \(num2)")

//Concatenación de Strings
var miCadena1 = "Hola"
var miCadena2 = "Valencia"
var miCadena3 = miCadena1 + " " + miCadena2
print(miCadena3)

//Declaracion y operacion de Double
var miDouble1 = 7.0
var miDouble2 = 7.7

var miDouble3 = miDouble1 + miDouble2
print(miDouble3)

//var miInt = 2
//miDouble3 = miDouble1 + miInt
//No se pueden sumar enteros y Doubles
//Pero si en vez de una variable, lo ponemos directamente, lo infiere
var miDouble4 = miDouble2 + 2
print(miDouble4)

//Operaciones con Booleanos
//no se puede sumar ni restar 2 booleanos,
//pero se puede operar entre ellos, por ejemplo con comparaciones o if
var miBooleano1 = true
var miBooleano2 = false
if (miBooleano1 == true) && (miBooleano2 == false){
    print("Primero true y luego false")
}
print("Ha entrado en el bucle porque:")
print("Primera condición: \(miBooleano1==true)")
print("Segunda condición: \(miBooleano2==false)")

//Con la condición de abajo, se imprimirá false, porque no son iguales
print(miBooleano1==miBooleano2)

var miBooleano3 = true
var miBooleano4 = false
var resultado = "No se cumple el resultado"

if((miBooleano3==true) && (miBooleano4 == true)) && (miDouble4 <= 12){
    print("Primera condición: \(miBooleano1==true)")
    print("Segunda condición: \(miBooleano2==false)")
    print("Tercera condición: \(miDouble3 <= 12)")
} else{
    print("\(resultado), por eso estamos dentro del else.")
}

//Switchcase
var pais = "España"

switch pais {
    case "España", "Argentina", "Chile":
        print("En \(pais) se habla Castellano")
    /*
     case "Argentina":
        print("En \(pais) se habla Castellano")
    case "Chile":
        print("En \(pais) se habla Castellano")
    */
    case "USA":
        print("En \(pais) se habla Inglés")
    case "Francia":
        print("En \(pais) se habla Francés")
    default:
        print("No conozco el idioma de \(pais)")
}

var edad = 15
switch edad {
case 0,1,2:
    print("Eres un bebé")
case 3...10:
    print("Eres muy joven")
case 11..<18:
    print("Eres un adolescente")
case 18..<120:
    print("Eres una persona adulta")
default:
    print("No te lo crees ni tú")
}

//Listas (arrays de kotlin)
let nombre = "Jose"
let apellido = "Sorli"

var miArray = ["Welcome", "to", "Valencia"]
print(miArray)
miArray.append(nombre)
miArray.append(apellido)

print(miArray)

miArray.append(contentsOf: ["The", "city", "of", "music"])
print(miArray)
miArray.remove(at: 4)
print(miArray)

//Mapas
var mapa1 = ["Jose":47, "Luis":45]
print(mapa1)
mapa1.updateValue(44, forKey: "Luis")
print(mapa1)

//Función repeat
var indice = 0
repeat{
    print(miArray[indice])
    indice += 1
} while indice < miArray.count

//Opcionales
let miCadena = "12345"
let miEntero = Int(miCadena)

//No dará error, pero no se imprimirá bien, porque no has contemplado que sea nulo
//Por ejemplo si en vez de un número, es una cadena (que transformado sería nulo)
print(miEntero)
//Sí estamos seguros de que nunca va a ser nulo, puedes forzarlo con ! después de la variable
print(miEntero!)

print(miEntero ?? "Escribe un número")

//let miCadena2 = "Hola"
//let miEntero2 = Int(miCadena2)
//Dará como resultado nulo, porque no es un entero.
//Y si lo forzamos, dará error
//print(miEntero2)

//Función con un parámetro de entrada
func diMiNombre(nombre:String){
    print("Hola tu nombre es \(nombre)")
}
diMiNombre(nombre: "Jose")

//Función con más de un argumento
func miNombreyEdad(nombre:String, edad:Int){
    print("Hola, es tu nombre \(nombre), y tu edad es \(edad)")
}

miNombreyEdad(nombre: "Luis", edad: 44)

//Función con retorno
func holaCadena() -> String {
    return "Hola"
}
print(holaCadena())

//Función con valor de retorno y argumentos
func sumaDosNumeros(primero:Int, segundo:Int) -> Int{
    let res = primero + segundo
    return res
}
print(sumaDosNumeros(primero: 12, segundo: 23))
