import Foundation 

// Abstraction 
protocol Shape {
    func calculateArea() -> Double
}

struct Circle: Shape {
    let radius: Double 
    func calculateArea() -> Double {
        return Double.pi * (radius * radius)
    }
}

struct Square: Shape {
    let width: Double 
    func calculateArea() -> Double {
        return width * width
    }
}

// Our client function is only dealing with abstractions
// This is how you provide abstraction to hide the data and to hide the implementation of your concrete implementation
func displayArea(shapes: [Shape]) {
    for shape in shapes {
        let area = shape.calculateArea()
        print(area)
    }
}

displayArea(shapes: [Circle(radius: 25), Square(width: 20)])