import Foundation

// Bad Practice in Swift, `_` to indicate private variable. This is called Member Prefix
// class Customer {
//     private var _firstName: String 
//     private var _lastName: String 

//     init(firstName: String, lastName: String) {
//         _firstName = firstName 
//         _lastName = lastName
//     }

// }

/* Good Practice */
class Customer {
    private var firstName: String 
    private var lastName: String 

    init(firstName: String, lastName: String) {
        self.firstName = firstName 
        self.lastName = lastName
    }

}

// No Prefix Required for `Protocol`
protocol Shape { }

struct Circle: Shape { }

struct Rectangle: Shape { }

protocol Decoder {
    func decode() 
}

class JSONDecoder: Decoder {
    func decode() {

    }
}

class BinaryDecoder: Decoder {
    func decode() {
     
    }
}

protocol HttpClient {

}

// This is not bad. You can use this
class HttpClientImpl: HTTPClient {

}