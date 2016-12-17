
import UIKit

// Consider that the tank is being filled from empty to full and the input values are liters and kilometers.
let tankFuelInLiters: Double = 60

// Make function for calculating average fuel consumption in liters per 100 km
func calculateFuelConsumptionPer100km(fuel: Double, distance: Double) -> Double {
    let consumedFuelPer100km = (fuel / distance) * 100
    
    return consumedFuelPer100km
}

// Make function that is used for adding distance and amount of fuel. Calculate average fuel consumption between the current and the last fueling
func calculateFuelCosumptionBetweenFuelings(distance: Double, currentFueling: Double) -> Double {
    let consumedFuelPerKilometer = currentFueling / distance
    
    return consumedFuelPerKilometer
}

// Make function for converting l/100km to mpg.
func convertLitersToMPG(litersPer100km: Double) -> Double {
    let galon = 4.54609 // 1 galon = 4.54609 liters
    let mile = 1.609344 // 1 mile = 1.609344 kilometers
    
    let mpg = (100 * galon) / (mile * litersPer100km)
    
    return mpg
}

// Make function for calculating the average price per kilometer on given fuel price per liter.
func calculatePricePerKilometer(pricePerLiter: Double, distance: Double) -> Double {
    let litersPerKilometer = tankFuelInLiters / distance
    let pricePerKilometer = litersPerKilometer * pricePerLiter
    
    return pricePerKilometer
}


// calculateFuelConsumptionPer100km(fuel: 23, distance: 150)
// calculateFuelCosumptionBetweenFuelings(distance: 350, finalFuel: 30)
// convertLitersToMPG(litersPer100km: 7.0)
// calculatePricePerKilometer(pricePerLiter: 2.50, distance: 200)
