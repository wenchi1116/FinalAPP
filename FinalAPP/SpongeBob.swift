import SwiftUI

struct SpongeBob: View {
    @State private var show = false
    
    var body: some View {
        NavigationStack {
            VStack{
                HStack{
                    Image("海綿寶寶2")
                        .resizable()
                        .scaledToFit()
                        .frame(width:200 , height:200)
                        .offset(y:-50)
                    VStack{
                        if show {
                            Image("海綿寶寶3")
                                .resizable()
                                .scaledToFit()
                                .frame(width:150 , height:150)
                                .offset(y:-50)
                                .transition(.opacity)
                        }
                        if show {
                            Image("海綿寶寶3")
                                .resizable()
                                .scaledToFit()
                                .frame(width:150 , height:150)
                                .offset(y:-60)
                                .transition(.opacity)
                        }
                    }
                }
                Text("海綿寶寶")
                    .font(.system(size: 30))
                    .bold()
                    .offset(y:-90)
                //.foregroundColor(Color(uiColor:UIColor.systemYellow))
                    .foregroundColor(.yellow)
                Text("年齡10歲\n一塊黃色的方形海綿\n是左撇子（事實上有兩支左手），共八根手指，而手斷了也還可以再生\n力氣特別小，腦容量為64MB\n與他的寵物蝸牛「小蝸」住在海底下的鳳梨屋\n在蟹堡王餐廳擔任神廚的工作，由於他熱愛這份工作，所以只要一天沒到蟹堡王工作，就會讓他受不了，但工作太久也會得「蟹堡恐懼症」\n曾連續26次獲得蟹堡王的本月最佳員工稱號，擁有一個超大號的獎盃壁櫥\n個性樂觀，工作成績也很好(準時上班機率99.9%)\n非常的自以為是、固執再加上有點神經質，也有無可救藥的正面思考及愛碎碎念，因此常惹出麻煩\n興趣：抓水母和空手道，收集乾掉的口香糖\n每天早上出門時會喊：『第一名！、第一名！』")
                    .font(.system(size:16))
                    .offset(y:-60)
                    .padding(EdgeInsets(top: 0, leading: 15, bottom: 0, trailing: 15))
                    .foregroundColor(.black)
                
                NavigationLink("寵物小蝸") {
                    pet()
                }
                .font(.system(size: 25))
                .bold()
                .offset(y:-40)
                .foregroundColor(Color(red: 244/255, green: 150/255, blue: 170/255))
            }
            
            .animation(.easeInOut(duration: 4), value: show)
            .onAppear {
                show = true
            }
        }
    }
}

struct pet: View {
    var body: some View {
        HStack{
            Image("小蝸")
                .resizable()
                .scaledToFit()
                .frame(width:200,height:200)
                .offset(y:10)
                .navigationTitle("海綿寶寶的寵物")
            Text("小蝸")
                .font(.system(size: 30))
                .bold()
                .offset(y:10)
                .foregroundColor(Color(red: 244/255, green: 150/255, blue: 170/255))
        }
        Text("蝸牛，海綿寶寶的寵物，只會「喵～」地叫\n在夢中會說話，智商甚至超過海綿寶寶，是名哲學家\n雖是隻蝸牛但穿布鞋，曾教海綿寶寶如何綁鞋帶\n會咬人，黏液會讓人跌倒\n腦容量為32MB\n大部份時候都被海綿寶寶留在家裡\n會幫海綿寶寶繳電費\n內殼藏有：海綿寶寶的我愛蟹堡T-shirt、CD播放器、小蝸照片、以及他的黏液")
            .font(.system(size:16))
            .offset(y:50)
            .padding(EdgeInsets(top: 0, leading: 15, bottom: 0, trailing: 15))
        
    }
}

#Preview {
    SpongeBob()
}

