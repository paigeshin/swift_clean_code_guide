import Foundation 

/* Bad Practice, Plural */
class Customers {

}

/* Good Practice, Singular */
class Customer {

    func save() {

    }

    func markAbsent() {

    }

}

class Account {

}

class Task {
    
    var title: String 

    init(title: String) {
        self.title = title
    }

}

class CustomerRepository {

    // func fetchCustomers() {

    // }

    func getAll() -> [Customer] {
        return [Customer]()
    }

}

class AccountRepository {

    // func getAccounts() {

    // }

    func getAll() {

    }

}

class AddressRepository {

    // func retrieveAddresses() {

    // }

    func getAll() {

    }

}


/*
When picking a middle man 
Don't use Manager, Controller, or Driver in one application
Just pick one name 
*/

class CustomerManager {

}

// Middle Man - MVC
class CustomerController {

}

class CustomerDriver {

}