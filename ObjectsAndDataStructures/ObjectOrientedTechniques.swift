import Foundation 

// You can add additional functionalities
class Square {
    
    let width: Double 

    init(width: Double) {
        self.width = width 
    }

}

class Circle {

    let radius: Double 

    init(radius: Double) {
        self.radius = radius
    }

}

enum ShapeError: Error {
    case noShape(String)
}

class Geometry {

    func circumference(shape: AnyObject) -> Double {
        return 1.0
    }

    func area(shape: AnyObject) throws -> Double {

        if shape is Square {
            let square = shape as! Square
            return pow(square.width, 2)
        }
        else if shape is Circle {
            let circle = shape as! Circle
            return Double.pi * (circle.radius * circle.radius) // pi * r^2
        }

        throw ShapeError.noShape("Nu such shape exists!")

    } 

}

do {
    let result = try Geometry()
        .area(shape: Circle(radius: 20))
    print(result)
} catch ShapeError.noShape(let errorMessage) {
    print(errorMessage)
}