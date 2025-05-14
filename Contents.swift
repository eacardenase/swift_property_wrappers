import Cocoa

struct Car {
    var fuelLevel: Double = 1.0
}

var myCar = Car()
myCar.fuelLevel = 1.1

print("Fuel:", myCar.fuelLevel)
