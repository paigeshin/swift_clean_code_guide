import Foundation

// The problem with this code, 
// When you need to add some features, you need to new properties or new methods
// class Sql {

//     var table: String 
//     var columns: [String]

//     init(table: String, columns: [String]) {
//         self.table = table 
//         self.columns = columns 
//     }

//     func create() -> String {
//         return "" 
//     }

//     func insert(fields: [AnyObject]) {

//     }

//     func selectAll() {

//     }

// }

protocol Sql {
    func generate() -> String 
}

class InsertSQL: Sql {

    var table: String 
    var columns: [String]
    var values: [String]

    init(table: String, columns: [String], values: [String]) {
        self.table = table 
        self.columns = columns
        self.values = values 
    }

    func generate() -> String {
        return "INSERT INTO \(self.table)(\(columns.joined(separator: ","))) VALUE(\(self.values.joined(separator: ",")))" 
    }

}

// New Feature
class SelectWithCriteria: Sql {

    var table: String 
    var columns: [String]
    var criteria: String  

    init(table: String, columns: [String], criteria: String) {
        self.table = table 
        self.columns = columns
        self.criteria = criteria
    } 

    func generate() -> String {
        return ""
    }

}

func executeSql(sql: Sql) {
    let sqlAsString = sql.generate()
    // execute the sql 
} 

let insertSql = InsertSQL(table: "Customers", columns: ["firstName", "lastName"], values: ["Paige", "Shin"])
let result = insertSql.generate()

print(result)