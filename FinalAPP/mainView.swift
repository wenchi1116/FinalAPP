import SwiftUI
import AVFoundation

struct mainView: View {
    
    let player = AVPlayer()
    
    var body: some View {
        NavigationStack{
            VStack {
                ScrollView(.vertical, showsIndicators: false){
                    VStack{
                        Image("封面照")
                            .resizable()
                            .scaledToFill()
                            .frame(width: 400, height: 160)
                            .offset(x:0,y:15)
                        
                        Image("全家福")
                            .resizable()
                            .scaledToFill()
                            .frame(width: 200, height: 130)
                            .offset(x:0,y:10)
                        
                        NavigationLink {
                            //跳到的畫面
                            characterView()
                        }label: {
                            Text("人物介紹")
                                .font(.system(size:15))
                                .bold()
                                .padding(EdgeInsets(top: 10, leading: 90, bottom: 10, trailing: 90))
                                .background(LinearGradient(gradient: Gradient(colors: [Color(red: 172/255, green: 236/255, blue: 215/255), Color(red: 251/255, green: 238/255, blue: 152/255)]), startPoint: UnitPoint(x: 0, y: 0), endPoint: UnitPoint(x: 1, y: 1)))
                                .cornerRadius(10)
                                .clipShape(RoundedRectangle(cornerRadius: 10))
                                .offset(x:0,y:-23)
                        }

                        Image("冷知識")
                            .resizable()
                            .scaledToFill()
                            .frame(width: 180, height: 120)
                            .clipShape(RoundedRectangle(cornerRadius: 40))
                            //.clipShape(Circle())
                            .offset(x:0,y:-3)
                        
                        NavigationLink {
                            //跳到的畫面
                            knowledgeView()
                        }label: {
                            Text("你不知道的冷知識")
                                .font(.system(size:15))
                                .bold()
                                .padding(EdgeInsets(top: 10, leading: 60, bottom: 10, trailing: 60))
                                .background(LinearGradient(gradient: Gradient(colors: [Color(red: 172/255, green: 236/255, blue: 215/255), Color(red: 251/255, green: 238/255, blue: 152/255)]), startPoint: UnitPoint(x: 0, y: 0), endPoint: UnitPoint(x: 1, y: 1)))
                                .cornerRadius(10)
                                .clipShape(RoundedRectangle(cornerRadius: 10))
                                .offset(x:0,y:2)
                        }
                        
                        Image("youtube照")
                            .resizable()
                            .scaledToFill()
                            .frame(width: 180, height: 120)
                            .clipShape(RoundedRectangle(cornerRadius: 20))
                            //.clipShape(Circle())
                            .offset(x:0,y:25)
                        
                        NavigationLink {
                            //跳到的畫面
                            YoutubeView()
                        }label: {
                            Text("youtube隨你看")
                                .font(.system(size:15))
                                .bold()
                                .padding(EdgeInsets(top: 10, leading: 70, bottom: 10, trailing: 70))
                                .background(LinearGradient(gradient: Gradient(colors: [Color(red: 172/255, green: 236/255, blue: 215/255), Color(red: 251/255, green: 238/255, blue: 152/255)]), startPoint: UnitPoint(x: 0, y: 0), endPoint: UnitPoint(x: 1, y: 1)))
                                .cornerRadius(10)
                                .clipShape(RoundedRectangle(cornerRadius: 10))
                                .offset(x:0,y:30)
                        }
                        
                        Image("我好愛你")
                            .resizable()
                            .scaledToFill()
                            .frame(width: 180, height: 120)
                            .clipShape(RoundedRectangle(cornerRadius: 40))
                        //.clipShape(Circle())
                            .offset(x:0,y:55)
                        
                        NavigationLink {
                            //跳到的畫面
                            pictureView()
                        }label: {
                            Text("梗圖小天地")
                                .font(.system(size:15))
                                .bold()
                                .padding(EdgeInsets(top: 10, leading: 80, bottom: 10, trailing: 80))
                                .background(LinearGradient(gradient: Gradient(colors: [Color(red: 172/255, green: 236/255, blue: 215/255), Color(red: 251/255, green: 238/255, blue: 152/255)]), startPoint: UnitPoint(x: 0, y: 0), endPoint: UnitPoint(x: 1, y: 1)))
                                .cornerRadius(10)
                                .clipShape(RoundedRectangle(cornerRadius: 10))
                                .offset(x:0,y:60)
                        }
                        
                        Image("這我爸媽")
                            .resizable()
                            .scaledToFill()
                            .frame(width: 180, height: 120)
                            .clipShape(RoundedRectangle(cornerRadius: 30))
                        //.clipShape(Circle())
                            .offset(x:0,y:90)
                        
                        NavigationLink {
                            //跳到的畫面
                            photoView()
                        }label: {
                            Text("自己的梗圖自己做")
                                .font(.system(size:15))
                                .bold()
                                .padding(EdgeInsets(top: 10, leading: 60, bottom: 10, trailing: 60))
                                .background(LinearGradient(gradient: Gradient(colors: [Color(red: 172/255, green: 236/255, blue: 215/255), Color(red: 251/255, green: 238/255, blue: 152/255)]), startPoint: UnitPoint(x: 0, y: 0), endPoint: UnitPoint(x: 1, y: 1)))
                                .cornerRadius(10)
                                .clipShape(RoundedRectangle(cornerRadius: 10))
                                .offset(x:0,y:100)
                        }
                        
                        Spacer(minLength: 90)
                    }
                    .frame(maxWidth: .infinity)
                }
            }
            .accentColor(.black)
        }
        .onAppear {
                    let url = Bundle.main.url(forResource: "背景音樂", withExtension: "mp3")!
                    let playerItem = AVPlayerItem(url: url)
                    player.replaceCurrentItem(with: playerItem)
                    player.play()
        }
    }
}

#Preview {
    mainView()
}

