import Foundation

protocol Shape {
    func area() -> Double 
    func circumference() -> Double
}

struct Circle: Shape {

    let radius: Double 

    func area() -> Double {
        return Double.pi * (radius * radius)
    }

    func circumference() -> Double {
    
    }

}

struct Square: Shape {

    let width: Double 

    func area() -> Double {
        return width * width
    }

    func circumference() -> Double {
    
    }

}