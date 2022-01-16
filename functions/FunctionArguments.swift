import UIKit 

/* Not Simplifed */
struct Circle {
    let x: CGFloat 
    let y: CGFloat 
    let radius: CGFlaot 
}

func makeCircle(x: CGFloat, y: CGFloat, radius: CGFloat) -> Circle {
    return Circle(x: x, y: y, radius: radius)
}

/* Simplified Version */
struct Circle {
    let point: CGPoint 
    let radius: CGFloat 
}

func makeCircle(point: CGPoint, radius: CGFloat) -> Circle {
    return Circle(point: point, radius: radius)
}