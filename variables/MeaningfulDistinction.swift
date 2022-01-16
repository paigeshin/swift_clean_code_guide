import Foundation 

/* Bad Code Practice */

// func copyCharacters(a1: Array<Character>, a2: inout Array<Character>) {
//     for c in a1 {
//         a2.append(c)
//     }
// }

// var r: Array<Character> = []
// copyCharacters(a1: ["a", "b", "c", "d"], a2: &r)

func copyCharacters(source: Array<Character>, destination: inout Array<Character>) {
    for char in source {
        destination.append(char)
    }
}

var copiedCharacters: Array<Character> = []
copyCharacters(source: ["a", "b", "c", "d"], destination: &copiedCharacters)