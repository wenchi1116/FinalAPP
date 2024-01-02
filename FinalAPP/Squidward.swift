import SwiftUI

struct Squidward: View {
    var body: some View {
        VStack{
            Image("章魚哥2")
                .resizable()
                .scaledToFit()
                .frame(width:180 , height:180)
                .offset(y:-40)
            Text("章魚哥")
                .font(.system(size: 30))
                .bold()
                .offset(y:0)
                //.foregroundColor(Color(uiColor:UIColor.blue))
                .foregroundColor(.blue)

            Text("年齡20歲\n一隻光頭章魚，海綿寶寶的另一位鄰居兼同事\n個性冷淡，很討厭海綿寶寶\n海綿寶寶的存在簡直讓他生不如死，但是海綿寶寶卻對他相當友善\n擔任蟹堡王的櫃檯，上班態度很差\n（準時上班機率12.5%）\n很喜歡吃美味蟹堡\n非常希望有頭髮，非常自戀，自認為非常有才華和藝術細胞\n一直很想出名，喜歡吹豎笛，但是吹得非常難聽\n有六隻觸腳，其中兩隻作手用，另外四隻經常會兩隻兩隻同步用來作雙腳走動\n興趣是演奏豎笛，跳舞，騎單車，指甲美容，遠離海綿寶寶、派大星")
                .font(.system(size:16))
                .offset(y:40)
                .padding(EdgeInsets(top: 0, leading: 15, bottom: 0, trailing: 15))
        }
        
    }
}

#Preview {
    Squidward()
}

