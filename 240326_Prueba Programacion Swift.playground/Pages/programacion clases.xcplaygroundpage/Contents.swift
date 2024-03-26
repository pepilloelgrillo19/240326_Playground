//: [Previous](@previous)

import Foundation

class Programador {
    let nombre:String
    let edad:Int
    //Si lo ponemos entre corchetes, estamos indicando que es una lista (array) de Lenguaje
    let lenguajes: [Lenguaje]
    var amigos: [Programador]?
    
    enum Lenguaje {
        case swift
        case kotlin
        case java
        case javascript
    }
    
    //Para no tener que llenar las variables
    init(nombre:String, edad:Int, lenguajes:[Lenguaje], amigos:[Programador]?){
        self.nombre = nombre
        self.edad = edad
        self.lenguajes = lenguajes
        self.amigos = amigos
    }
    
    func programo(){
        print("Programo en estos lenguajes: ")
    }
    
}

//Instanciado de la clase. Los valores de enum se llaman poniendo . delante
let juan = Programador(nombre: "Juan", edad: 22, lenguajes: [.kotlin, .swift], amigos: nil)
juan.programo()
print(juan.lenguajes)

let zaafir = Programador(nombre: "Zaafir", edad: 17, lenguajes: [.kotlin, .javascript], amigos: nil)
let alberto = Programador(nombre: "Zaafir", edad: 17, lenguajes: [.kotlin, .javascript], amigos: nil)

juan.amigos = [zaafir, alberto]
zaafir.amigos = [juan]

print(juan.amigos?.first?.nombre ?? "No tiene amigos")
