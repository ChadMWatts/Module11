//: Playground - noun: a place where people can play

import Cocoa

protocol Vehicle {
    
    var speed: Double {get}
    var isMoving: Bool {get set}
    
    mutating func startCar()
    mutating func StopCar()
}

extension Vehicle {
    
    mutating func startCar() {
        if !isMoving {
            isMoving = true
            print(isMoving)
        }
    }
    
    mutating func stopCar() {
        if isMoving {
            isMoving = false
            print(isMoving)
        }
    }
}

class Tessala: Vehicle {
    
    var speed: Double
    var isMoving: Bool
    var charging: Bool
    var battery: Bool
    
    init(speed: Double, isMoving: Bool, charging: Bool, battery: Bool) {
        self.speed = speed
        self.isMoving = isMoving
        self.charging = charging
        self.battery = battery
    }
    
}

class x300: Vehicle {
    
    var speed: Double
    var isMoving: Bool
    var isMowing: Bool
    var is4x4: Bool
    
    init(speed: Double, isMoving: Bool, isMowing: Bool, is4x4: Bool) {
        
        self.speed = speed
        self.isMowing = isMowing
        self.isMoving = isMoving
        self.is4x4 = is4x4
        
    }
    
}

