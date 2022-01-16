
// Horrible Fucntion 
func calculateBetweenAddress(street: String, city1: String, state1: String, street2: String, city2: String, state2: String) {
    
}

// Refactored
struct Address {
    let street: String 
    let city: String 
    let state: String 
    let zipCode: String 
}
func calculateBetweenAddress(startAddress: Address, endAddress: Address) {
    
}