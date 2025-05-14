import Cocoa

struct Car {
    @Percentage var fuelLevel: Double = 1.0
    @Percentage var wiperFluidLevel: Double = 0.5
    @Percentage(upperBound: 2.0) var stereoVolume: Double = 1.5
}

var myCar = Car()
myCar.fuelLevel = 1.2

print("Fuel:", myCar.fuelLevel)

myCar.stereoVolume = 2.5
print("Volume:", myCar.stereoVolume)
