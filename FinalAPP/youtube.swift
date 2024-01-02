import SwiftUI

struct YoutubeData: Codable {
    let items: [VideoItem]
    let nextPageToken: String
}

struct VideoItem: Codable {
    let id: VideoID?
    let snippet: VideoSnippet
    let contentDetails: VideoContentDetails?
}

struct VideoID: Codable {
    let kind: String
    let videoId: String

    enum CodingKeys: String, CodingKey {
        case kind
        case videoId = "videoId"
    }
}

struct VideoContentDetails: Codable { 
    let videoId: String
}

struct VideoSnippet: Codable {
    let thumbnails: VideoThumbnails?
    let title: String
    let description: String
}

struct VideoThumbnails: Codable {
    let medium: VideoThumbnail?
}

struct VideoThumbnail: Codable {
    let url: URL
    let width: Int
    let height: Int
}

