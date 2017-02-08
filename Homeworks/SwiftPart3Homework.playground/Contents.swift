// Task 1

protocol Figure {
    var name: String { get }
    
    func calculatePerimeter() -> Float
    func calculateArea() -> Float
}

class Triangle: Figure {
    var name: String {
        return  String(describing: self)
    }

    var sideA: Float
    var sideB: Float
    var sideC: Float

    init(sideA: Float, sideB: Float, sideC: Float) {
        self.sideA = sideA
        self.sideB = sideB
        self.sideC = sideC
    }

    func calculatePerimeter() -> Float {
        return self.sideA + self.sideB + self.sideC
    }

    func calculateArea() -> Float {
        return 0.5 * (self.sideA + self.sideB + self.sideC)
    }
}

class ЕquilateralQuadrangle: Figure {
    var name: String {
        return  String(describing: self)
    }

    var sideA: Float
    var diagonal: Float

    init(sideA: Float, diagonal: Float) {
        self.sideA    = sideA
        self.diagonal = diagonal
    }

    func calculatePerimeter() -> Float {
        return 4 * self.sideA
    }

    func calculateArea() -> Float {
        return self.sideA * self.sideA
    }
}

class ScaleneQuadrangle: Figure {
    var name: String {
        return  String(describing: self)
    }

    func calculatePerimeter() -> Float {
        return 2 * (self.sideA + self.sideB)
    }

    func calculateArea() -> Float {
        preconditionFailure("This method must be overriden")
    }

    var sideA: Float
    var sideB: Float
    var sideC: Float
    var sideD: Float
    var diagonal: Float

    init(sideA: Float, sideB: Float, sideC: Float, sideD: Float, diagonal: Float) {
        self.sideA    = sideA
        self.sideB    = sideB
        self.sideC    = sideC
        self.sideD    = sideD
        self.diagonal = diagonal
    }
}

class Rectangle: ScaleneQuadrangle {
    override func calculateArea() -> Float {
        return self.sideA * self.sideB
    }
}

class Trapezoid: ScaleneQuadrangle {
    override func calculateArea() -> Float {
        return (self.sideA + self.sideB / 2) * diagonal
    }
}

class Polygon: Figure {
    var name: String {
        return  String(describing: self)
    }

    var sideA: Float

    init(sideA: Float) {
        self.sideA = sideA
    }

    func calculatePerimeter() -> Float {
        preconditionFailure("This method must be overriden")
    }

    func calculateArea() -> Float {
        preconditionFailure("This method must be overriden")
    }
}

class Pentagon: Polygon {
    override func calculatePerimeter() -> Float {
        return 5 * sideA
    }

    override func calculateArea() -> Float {
        let sides: Float = 5

        return 0.25 * (sides * (sides + 2 * sides.squareRoot())).squareRoot() * (self.sideA * self.sideA)
    }
}

class Hexagon: Polygon {
    override func calculatePerimeter() -> Float {
        return self.sideA * 6
    }

    override func calculateArea() -> Float {
        let halfSides: Float = 3

        return ((halfSides * halfSides.squareRoot()) / 2) * (self.sideA * self.sideA)
    }
}

// Tests

let triangle = Triangle(sideA: 3, sideB: 4.2, sideC: 7)
print("\(triangle.name): \(triangle.calculatePerimeter())")
print("\(triangle.name): \(triangle.calculateArea())")

print("\n")

let square = ЕquilateralQuadrangle(sideA: 10, diagonal: 8)
print("\(square.name): \(square.calculatePerimeter())")
print("\(square.name): \(square.calculateArea())")

print("\n")

let rhombus = ЕquilateralQuadrangle(sideA: 4, diagonal: 6)
print("\(rhombus.name): \(rhombus.calculatePerimeter())")
print("\(rhombus.name): \(rhombus.calculateArea())")

print("\n")

let rectangle = Rectangle(sideA: 2, sideB: 3.5, sideC: 2, sideD: 3.5, diagonal: 6)
print("\(rectangle.name): \(rectangle.calculatePerimeter())")
print("\(rectangle.name): \(rectangle.calculateArea())")

print("\n")

let trapezoid = Trapezoid(sideA: 4, sideB: 9, sideC: 4, sideD: 6, diagonal: 12)
print("\(trapezoid.name): \(trapezoid.calculatePerimeter())")
print("\(trapezoid.name): \(trapezoid.calculateArea())")

print("\n")

let pentagon = Pentagon(sideA: 7.3)
print("\(pentagon.name): \(pentagon.calculatePerimeter())")
print("\(pentagon.name): \(pentagon.calculateArea())")

print("\n")

let hexagon = Hexagon(sideA: 12.1)
print("\(hexagon.name): \(hexagon.calculatePerimeter())")
print("\(hexagon.name): \(hexagon.calculateArea())")


// Task 2 - Not quite good :)

var jsonString: String = ""
var serializedArrayString: String = ""
var serializedDictionaryString: String = ""

func convertToJSON(data: Any) -> String {

    if let array = data as? [Any] {
        jsonString = serializeArray(array: array)
    } else if let dictionary = data as? [AnyHashable: Any] {
        jsonString = serializeDictionary(dictionary: dictionary)
    }

    return jsonString
}

func serializeArray(array: [Any]) -> String {
    serializedArrayString += " \"array\": [\n"

    for index in 0..<array.count {
        let element = array[index]

        if element as? [Any] == nil && element as? [AnyHashable: Any] == nil {
            serializedArrayString += " \"\(element)\""
            if index < array.count - 1 {
                serializedArrayString += ",\n"
            }
        } else if element is [Any] {
            serializedArrayString += serializeArray(array: element as! [Any])

        } else if element is [AnyHashable: Any] {
            serializedArrayString += " {\n"

            serializedArrayString += serializeDictionary(dictionary: element as! [AnyHashable: Any])

            if index < array.count - 1 {
                serializedArrayString += "\n },\n"
            } else {
                serializedArrayString += "\n }"
            }
        }
    }

    serializedArrayString += "\n ]"

    return serializedArrayString
}

func serializeDictionary(dictionary: [AnyHashable: Any]) -> String {
    var dictionaryAsArray: [String] = []

    for (key, value) in dictionary {
        if value as? [Any] == nil && value as? [AnyHashable: Any] == nil {
            dictionaryAsArray.append("  \"\(key)\": \"\(value)\"")
        } else if value is [Any] {
            serializedDictionaryString += " \"array\": [\n"
            serializedDictionaryString += serializeArray(array: key as! [Any])
        } else if value is [AnyHashable: Any] {
            serializedDictionaryString += " \"dictionary\": [\n"
            serializedDictionaryString += serializeDictionary(dictionary: key as! [AnyHashable: Any])
        }
    }

    if !dictionaryAsArray.isEmpty {
        serializedDictionaryString = dictionaryAsArray.joined(separator: ",\n")
    }

    return serializedDictionaryString
}

