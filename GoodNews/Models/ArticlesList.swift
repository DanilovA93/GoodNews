import Foundation

struct ArticlesList: Decodable {
    let status: String
    let totalResults: Int
    let articles: [Article]
}
