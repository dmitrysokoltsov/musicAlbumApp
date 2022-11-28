import Foundation

struct AlbumModel: Decodable {
    let results: [Album]
}

struct Album: Decodable {
    let artistName: String
    let collectionName: String
    let trackCount: Int
    let artworkUrl100: String?
    let releaseDate: String
    let collectionId: Int
}
