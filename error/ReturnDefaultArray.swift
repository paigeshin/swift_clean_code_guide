import Foundation

class Customer {
    
    var customerId: Int 
    var name: String 
    var dateUpdated = Date() 

    init(customerId: Int, name: String) {
        self.customerId = customerId
        self.name = name 
    }

    func update() {
        self.dateUpdated = Date() 
    }

}

class CustomerRepository {

    private func findById(customerId: Int) -> Customer? {
        if Customer % 2 == 0 {
            return Customer(customerId: customerId, name: "Paige Shin")
        }
        return nil 
    }

    func getAll() -> [Customer] {
        var customers = [Customer]()
        customers = [Customer(customerId: 12, name: "Paige Shin"), Customer(customerId: 15, name: "Sunehee Kim")]
        return customers
    }

    func updateCustomer(customer: Customer?) {
        if let customer = customer {
            let persistentCustomer = findById(customerId: customer.customerId)
            if persistedCustomer != nil {
                persistentCustomer?.update()
            }
        }
    }

}

let repository = CustomerRepository() 
let customers = repository.getAll()
customers.forEach {
    print($0)
}