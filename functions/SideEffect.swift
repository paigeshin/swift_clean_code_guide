struct User {
    let username: String 
    let password: String 
}

class UserService {

    func findByName(username: String) -> User {
        return User(username: "Johndoe", password: "passwors")
    }

}

func checkPassword(username: String, password: String) -> Bool {

    var validPassword = false 

    let user = UserService().findByName(username: username)
    if user.password == password {
        validPassword = true 
        UserSession.initialize() // SIDE EFFECT, YOU NEED TO AVOID THIS !!!
    }

    return validPassword
}