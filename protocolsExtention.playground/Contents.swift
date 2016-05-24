//: Playground - noun: a place where people can play

import Cocoa

protocol Vehicle {
    
    var speed: Double {get}
    var isMoving: Bool {get set}
    
    mutating func startCar()
    mutating func stopCar()

}

extension Vehicle {
    
    mutating func startCar() {
        if isMoving == false {
            isMoving = true
            print("isMoving")
        }
    }
    
    mutating func stopCar() {
        if isMoving == true {
            isMoving = false
            print("Is not moving")
        }
    }
}



class Subaru: Vehicle {
    
    var speed: Double
    var isMoving: Bool
    var economy: Bool
    
    init(speed: Double, isMoving: Bool, economy: Bool) {
        
        self.speed = speed
        self.isMoving = isMoving
        self.economy = economy
   
    }
}


class CheveyTruck: Vehicle {
    
    var speed: Double
    var isMoving: Bool
    var fourByFour: Bool
    
    init(speed: Double, isMoving: Bool, fourByFour: Bool) {
        
        self.speed = speed
        self.isMoving = isMoving
        self.fourByFour = fourByFour
        
    }
}

var wRX = Subaru(speed: 130, isMoving: true, economy: true)
print(wRX.isMoving)

