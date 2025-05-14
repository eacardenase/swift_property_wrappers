import Cocoa

struct Car {
    @Percentage var fuelLevel: Double = 1.0
    @Percentage var wiperFluidLevel: Double = 0.5
    @Percentage(upperBound: 2.0) var stereoVolume: Double = 1.5
}

extension Car: CustomStringConvertible {
    var description: String {
        "fuelLevel: \(fuelLevel), wrapped by \(_fuelLevel), projected: \($fuelLevel)"
    }
}

var myCar = Car()
myCar.fuelLevel = 1.2

print(myCar)

print("Fuel:", myCar.fuelLevel)

myCar.stereoVolume = 2.5
print("Volume:", myCar.stereoVolume)
print("Projected Volume:", myCar.$stereoVolume)
