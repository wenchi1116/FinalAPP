import Foundation

struct youtubePlaylistData : Codable {
    var id : String
    var title : String
    var thumbnail : String
    var channelTitle : String
    var publishedAt : String
    var videoId : String
    
    struct Thumbnail: Codable {
            let high: ImageURL
            
            struct ImageURL: Codable {
                let url: String
            }
        }
}

struct youtubeChannelData :  Identifiable{
    var id : String
    var bannerMobileExtraHdImageUrl : String
    var thumbnails : String
    var title : String
    var subscriberCount : String
    var description : String
    var publishedAt : String
    var viewCount : String
    var videoCount : String
}
