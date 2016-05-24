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
            print("Vehicle is moving!")
            
        }
    }
    
    mutating func stopCar() {
    
    if isMoving == true {
    isMoving = false
    print("Vehicle has Stopped!")
    
       }
    }
}

class lexus: Vehicle {
    
    var speed: Double
    var isMoving: Bool
    var turbo: Bool
    
    init(speed: Double, isMoving: Bool, turbo: Bool) {
        
        self.speed = speed
        self.isMoving = isMoving
        self.turbo = turbo
    }
}


class Chevey: Vehicle {
    
    var speed: Double
    var isMoving: Bool
    var fourByFour: Bool
    
    init(speed: Double, isMoving: Bool, fourByFour: Bool) {
        
        self.speed = speed
        self.isMoving = isMoving
        self.fourByFour = fourByFour
    }
}


var duramax = Chevey(speed: 112, isMoving: true, fourByFour: true)

print(duramax.isMoving)
print(duramax.startCar())
print(duramax.stopCar())
print(duramax.speed)

var cS300 = lexus(speed: 0.0, isMoving: false, turbo: true)

print(cS300.isMoving)
print(cS300.speed)
print(cS300.turbo)



protocol Racer: Vehicle {
    
    
    
}


















