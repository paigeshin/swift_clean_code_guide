import Foundation

// Intention Revealing Variable Name 
var published: Bool = false 


/* BAD CODE PRACTICE */
let theList = [["title": "Writing Clean Code", "published": "true"], ["title": "Introduction to JS", "published": "false"]]

func getItem() -> [[String: String]] {
    var list1 = [[String: String]]()
    for i in theList {
        if i["published"] == "true" {
            list1.append(i)
        }
    }
    return list1
}

print(getItem())

/* GOOD CODE PRACTICE */
struct Article {
    let title: String 
    let published: Bool
}

let articles = [
    Article(title: "Writing Clean Code", published: true),
    Article(title: "Intro to JS", published: false)
]

func getPublishedArticles() -> [Article] {
    articles.filter { $0.published }
}

print(getPublishedArticles())