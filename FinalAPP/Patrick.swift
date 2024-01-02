import SwiftUI

struct Patrick: View {
    @State private var moveDistance: Double = 0
    @State private var opacity: Double = 1
    
    var body: some View {
        VStack{
            Button("跑跑跑，向前跑") {
                    moveDistance += 700
                    opacity -= 0.3
            }
            .font(.system(size:25))
            .bold()
            .offset(y:-40)
            //.foregroundColor(Color(uiColor:UIColor.magenta))
            .foregroundColor(Color(red: 244/255, green: 187/255, blue: 187/255))
            
            HStack{
                Image("派大星2")
                    .resizable()
                    .scaledToFit()
                    .frame(width:180 , height:180)
                    .offset(x: moveDistance,y:-10)
                    .opacity(opacity)
                    //.animation(.linear, value: opacity)
                    //.animation(.linear, value: moveDistance)
                    //linear動畫維持固定的速度
                    .animation(
                                     .linear(duration: 3)
                                     .repeatForever(autoreverses: false),
                                     value: moveDistance
                                  )
                    .animation(
                                     .linear(duration: 3)
                                     .repeatForever(autoreverses: false),
                                     value: opacity
                                  )
                    
                Spacer()
            }
            Text("派大星")
                .font(.system(size: 30))
                .bold()
                .offset(y:10)
                .foregroundColor(Color(red: 244/255, green: 150/255, blue: 170/255))
            
            Text("年齡10歲\n一隻粉紅海星，是海綿寶寶的朋友\n住在章魚哥家隔壁的大石頭底下\n好吃懶做而且無腦，喜歡冰淇淋等垃圾食\n考駕照異常厲害，曾幫海綿寶寶作弊考駕照\n經常一事無成，又稱「粉紅大胖呆」，沒有鼻子及耳朵\n曾經整形過，但後來鼻子被臭味薰壞了，耳朵不知道為何消失\n認不得自己的父母，最喜歡看電視節目\n是一個電視海星，用污垢洗澡\n住在石頭房子裡，也會有其他習性，像是睡懶覺、惡作劇\n雖然是海星，但因為是卡通的關係，一個腳是頭，兩個腳是手，剩下的兩隻才是腳")
                .font(.system(size:16))
                .offset(y:30)
                .padding(EdgeInsets(top: 0, leading: 15, bottom: 0, trailing: 15))
        }
    }
}

#Preview {
    Patrick()
}

