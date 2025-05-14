import Cocoa

struct Car {
    @Percentage var fuelLevel: Double = 1.0
}

var myCar = Car()
myCar.fuelLevel = 1.2

print("Fuel:", myCar.fuelLevel)
