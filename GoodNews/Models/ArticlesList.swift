import Foundation

struct ArticlesList: Decodable {
    let status: String
    let totalResults: Int
    let articles: [Article]
}

extension ArticlesList {
    static var all: Resource<ArticlesList> = {
        let url = URL(string: "https://newsapi.org/v2/top-headlines?country=us&apiKey=0cf790498275413a9247f8b94b3843fd")!
        return Resource(url: url)
    }()
}
