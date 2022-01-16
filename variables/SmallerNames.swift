struct Account {
    let accountNumber: String 
}


/* smaller names are recommended, it's better than accountList */
var accounts: [Account] = []

/* Bad Practices */
class ShoppingCartServiceForCaching {

}

class ShoppingCartServiceForUserDefaults {

}

class ShoppingCartServiceForNetworkCalls {

}

/* Good Practices. More concise */
class CacheService {

}

class UserDefaultsService {

}

class NetworkClient {

}