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
    var aumenta : Bool?
    
    init(velocidad : Velocidades){
        //self.aumenta = true
        self.velocidad = Velocidades(velocidadInicial: Velocidades.Apagado)

    }
    
    func cambioDeVelocidad() -> (actual : Int, velocidadEnCadena : String) {
        var texto :String
        if aumenta == true {
            switch velocidad {
            case .Apagado:
                velocidad = .VelocidadBaja
                texto = "Velocidad Baja"
            case  .VelocidadBaja:
                velocidad = .VelocidadMedia
                texto = "Velocidad Media"
            case .VelocidadMedia:
                velocidad = .VelocidadAlta
                texto = "Velocidad Alta"
            case .VelocidadAlta:
                velocidad = .VelocidadMedia
                texto = "Velocidad Media"
                aumenta = false
            }
        }
        else if aumenta == nil {
            velocidad = .Apagado
            texto = "Apagado"
            aumenta = true
        }
        else{
            switch velocidad {
            case .Apagado:
                velocidad = .VelocidadBaja
                texto = "Velocidad Baja"
                aumenta = true
            case  .VelocidadBaja:
                velocidad = .Apagado
                texto = "Apagado"
            case .VelocidadMedia:
                velocidad = .VelocidadBaja
                texto = "Velocidad Baja"
            case .VelocidadAlta:
                velocidad = .VelocidadMedia
                texto = "Velocidad Media"
            }
            }
        return (velocidad.rawValue, texto)
    }
}

var auto : Auto = Auto.init(velocidad: .Apagado)



for i in 1...20{
    
    print(auto.cambioDeVelocidad())
}

