import Foundation

// Don't ever use pass nullable argument 

// func calculateCenter(start: CGPoint?, end: CGPoint?) -> CGPoint {
//     return CGPoint(x: (start.x + end.x) / 2, y: (start.y + end.y) / 2)
// }
// calculateCenter(start: nil, end: nil)

func calculateCenter(start: CGPoint, end: CGPoint) -> CGPoint {
    return CGPoint(x: (start.x + end.x) / 2, y: (start.y + end.y) / 2)
}

calculateCenter(start: CGPoint(x: 10, y: 30), end: CGPoint(x: 30, y: 100))