import SwiftUI
import AVKit

struct Eugene: View {
    @State private var rotateDegree: Double = 0
    
    var body: some View {
        NavigationStack {
            VStack{
                HStack{
                    Image("蟹老闆2")
                        .resizable()
                        .scaledToFit()
                        .frame(width:300 , height:300)
                        .offset(x:0,y:-80)
                    VStack{
                        Button("賺錢囉"){
                            rotateDegree = 360
                        }
                        .foregroundColor(Color(uiColor:UIColor.systemRed))
                        
                        Image("蟹老闆3")
                            .resizable()
                            .scaledToFit()
                            .frame(width:150 , height:150)
                            .offset(x:-70,y:-20)
                            .rotationEffect(.degrees(rotateDegree))
                                            .animation(
                                                .linear(duration: 1)
                                                .repeatCount(1, autoreverses: false),value: rotateDegree)
                    }
                }
                Text("蟹老闆")
                    .font(.system(size: 30))
                    .bold()
                    .offset(y:-90)
                    .foregroundColor(Color(uiColor:UIColor.red))
                Text("年齡40歲\n是一隻螃蟹，「蟹堡王餐廳」的老闆\n本名蟹阿金，視錢如命\n女兒是隻鯨魚，名叫珍珍\n目前蟹堡王餐廳的員工有海綿寶寶與章魚哥\n珍珍也曾經擔任蟹堡王的企劃\n蟹老闆為錢而工作，只認得錢，除了錢還是錢，非常小氣\n對他自己的女兒也不例外，但有時會請海綿寶寶吃蟹堡\n經常提醒他的員工要有時間觀念，因為時間就是金錢\n蟹堡王餐廳的口號是\nP.O.O.P.（People Order Our Patties）\n海綿寶寶是他的得力助手，會把錢和蟹堡秘方藏在自己的床墊下面")
                    .font(.system(size:16))
                    .offset(y:-70)
                    .padding(EdgeInsets(top: 0, leading: 15, bottom: 0, trailing: 15))
                
                NavigationLink("女兒珍珍") {
                    daughter()
                }
                .font(.system(size: 25))
                .offset(y:-40)
                .bold()
                .foregroundColor(Color(uiColor:UIColor.systemRed))
            }
        }
    }
}

struct daughter: View {
    var body: some View {
        let url = Bundle.main.url(forResource: "海綿寶寶 珍珍摔倒會地震的!", withExtension: "mp4")!
            VideoPlayer(player: AVPlayer(url: url))
                .frame(height: 300.0)
        HStack{
            Image("珍珍")
                .resizable()
                .scaledToFit()
                .frame(width:100,height:100)
                .offset(y:10)
                .navigationTitle("蟹老闆的女兒")
            Text("蟹珍珍")
                .font(.system(size: 25))
                .bold()
                .offset(y:10)
                .foregroundColor(Color(uiColor:UIColor.systemPink))
        }
        Text("年齡17歲\n蟹老闆的養女，原型是一隻抹香鯨\n喜歡購物，喜歡大把大把的消費\n愛美好面子，最受不了的是爸爸的小氣\n最喜歡潮流，是一個拉拉隊員\n正值青春期，常身穿粉紅色短T短裙和白襪子\n她的體重過人，所到之處有時會引發地震\n對海綿寶寶沒有好感\n與章魚哥是青梅竹馬\n生日願望甚至是能刷爆蟹老闆的信用卡")
            .font(.system(size:16))
            .offset(y:0)
            .padding(EdgeInsets(top: 0, leading: 15, bottom: 0, trailing: 15))
            
    }
}

#Preview {
    Eugene()
}

