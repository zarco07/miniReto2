//: Playground - noun: a place where people can play

import UIKit

enum Velocidades:Int {
    case Apagado = 0
    case VelocidadBaja = 20
    case VelocidadMedia = 50
    case VelocidadAlta = 120
    
    init(velocidadInicial : Velocidades){
        self = velocidadInicial
    }
}



class Auto {
    var velocidad : Velocidades
    
    init(velocidad : Velocidades){
        self.velocidad = Velocidades.Apagado
    }
    
    func cambioDeVelocidad() -> (actual : Int, velocidadEnCadena : String) {
        velocidad =
    }
}
