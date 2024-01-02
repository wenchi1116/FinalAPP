import SwiftUI
//Tab bar
struct ContentView: View {
    @State private var selection = 0
    var body: some View {
        //NavigationStack{
            ZStack{
                TabView(selection: $selection) {
                            mainView()
                                .tag(0)
                                .tabItem {
                                    Image(systemName: "house.fill")
                                    Text("主頁")
                                }
                            characterView()
                                .tag(2)
                                .tabItem {
                                    Image(systemName: "person.3.fill")
                                    Text("角色介紹")
                                }
                            knowledgeView()
                                .tag(3)
                                .tabItem {
                                    Image(systemName: "lightbulb")
                                    Text("冷知識")
                                }
                            YoutubeView()
                                .tag(4)
                                .tabItem {
                                    Image(systemName:"video.fill")
                                    Text("Youtube")
                                }
                            photoView()
                                .tag(5)
                                .tabItem {
                                    Image(systemName: "photo.on.rectangle")
                                    Text("梗圖客製化")
                                }
                }
                .accentColor(.orange) //選取時呈現橘色
            }
        //}
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

