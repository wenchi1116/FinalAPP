import SwiftUI

class YoutubeViewModel: ObservableObject {
    @Published var youtubes = [VideoItem]() // 從YouTube API取得的影片清單資料
    
    enum FetchError: Error {
        case invalidURL
        case badRequest
    }
    
    
    func fetchVideos() async throws {
        let searchTerm = "海綿寶寶"
        let apiKey = "AIzaSyAMdGJikyYUZX1h0LA1JCY2wbN7w0bT3TY"
        let urlStr = "https://www.googleapis.com/youtube/v3/search?part=snippet&q=\(searchTerm)&key=\(apiKey)&type=video&maxResults=20"

        guard let url = URL(string: urlStr) else {
            throw FetchError.invalidURL
        }

        let (data, response) = try await URLSession.shared.data(from: url)
        guard (response as? HTTPURLResponse)?.statusCode == 200 else {
            throw FetchError.badRequest
        }
        let YoutubeData = try JSONDecoder().decode(YoutubeData.self, from: data)
        youtubes = YoutubeData.items
       
    }
}

struct YoutubeView: View {
    @ObservedObject var viewModel = YoutubeViewModel()
    @State private var selectedVideoId: String?
    @State private var navigationActive: Bool = false
    
    let columns: [GridItem] = [
        GridItem(.flexible()),
        GridItem(.flexible())
    ]
   
    var body: some View {
        NavigationStack {
            ScrollView {
                if viewModel.youtubes.isEmpty {
                    ContentUnavailableView(label: {
                        ProgressView()
                    }, description: {
                        Text("Loading...")
                    })
                } else {
                    LazyVGrid(columns: columns,spacing: 25) {
                        ForEach(viewModel.youtubes.indices, id: \.self) { index in
                            Button(action: {
                                let videoId = viewModel.youtubes[index].id?.videoId ?? ""
                                //print("URL: \(videoId)")
                                selectedVideoId = videoId
                                navigationActive = true
                            }) {
                                VStack(spacing: 16) {
                                    RemoteImage(url: viewModel.youtubes[index].snippet.thumbnails?.medium?.url.absoluteString ?? "")
                                        .frame(width: 128, height: 72)
                                        .scaledToFit()
                                        .clipped()
                                    
                                    VStack(alignment: .leading, spacing: 8) {
                                        Text(viewModel.youtubes[index].snippet.title)
                                            .font(.caption)
                                            .foregroundColor(.black)
                                            .lineLimit(2)
                                            .multilineTextAlignment(.leading)
                                    }
                                    .frame(maxWidth: .infinity, alignment: .leading)
                                    .padding(8)
                                    .background(Color.gray.opacity(0.2))
                                    .cornerRadius(8)
                                }
                                .padding(8)
                            }
                            .buttonStyle(PlainButtonStyle())
                        }
                    }
                    .padding(8)
                    .navigationTitle("YouTube Videos")
                }
                    NavigationLink(
                        destination: selectedVideoId != nil ? SafariView(url: URL(string: "https://www.youtube.com/watch?v=\(selectedVideoId ?? "")")!) : nil,
                        isActive: $navigationActive,
                        label: {
                            EmptyView()
                        }
                    )
                    .hidden()
                }
            }
            .onAppear {
                Task {
                    do {
                        try await viewModel.fetchVideos()
                    } catch {
                        print("Error fetching videos: \(error)")
                    }
                }
            }
        }
    }




struct RemoteImage: View {
    let url: String
    @State private var imageData: Data?

    var body: some View {
        if let data = imageData, let uiImage = UIImage(data: data) {
            Image(uiImage: uiImage)
                .resizable()
        } else {
            Image(systemName: "photo")
                .resizable()
                .onAppear {
                    downloadImage()
                }
        }
    }

    private func downloadImage() {
        guard let imageUrl = URL(string: url) else { return }

        URLSession.shared.dataTask(with: imageUrl) { (data, _, error) in
            if let error = error {
                print("Error downloading image: \(error)")
            } else if let data = data {
                DispatchQueue.main.async {
                    self.imageData = data
                }
            }
        }.resume()
    }
}


struct YoutubeView_Previews: PreviewProvider {
    static var previews: some View {
        YoutubeView()
    }
}

/*https://www.googleapis.com/youtube/v3/search?part=snippet&q=海綿寶寶&key=AIzaSyAMdGJikyYUZX1h0LA1JCY2wbN7w0bT3TY&type=video&maxResults=50*/

