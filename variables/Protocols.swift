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