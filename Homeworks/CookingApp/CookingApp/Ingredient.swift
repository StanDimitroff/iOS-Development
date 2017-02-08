
import Foundation

enum MeasurementType: String {
    
    case piece = "piece", teaspoon = "teaspoon", tablespoon = "tablespoon",
    cup = "cup", glass = "glass", kilo = "kilo"
}

struct Ingredient {

    let name: String
    let measurementType: MeasurementType
    let quantity: Float

    init(name: String, measurementType: MeasurementType, quantity: Float) {
        self.name            = name
        self.measurementType = measurementType
        self.quantity        = quantity
    }

    var measurement: String {
        if self.quantity < 2 {
            return self.measurementType.rawValue
        }

        return "\(self.measurementType.rawValue)s"
    }
}
