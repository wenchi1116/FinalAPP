import SwiftUI

struct Sheldon: View {
    @State private var show = false
    //這裡建立了一個名為show的狀態屬性，它用於控制影像是否應該顯示
    //初始狀態為false，因此影像預設是隱藏的
    
    var body: some View {
        VStack{
            if show{
                Image("皮老闆2")
                    .resizable()
                    .scaledToFit()
                    .frame(width:180 , height:180)
                    .transition(.scale(scale:3).combined(with:.opacity))
                    //利用transition設定元件出現/消失的動畫
                    //scale:放大縮小的動畫
                    //opacity:淡入淡出的動畫
                    //出現時由3倍大慢慢縮小到1倍,搭配淡入動畫慢慢出現
            }
            Text("皮老闆")
                .font(.system(size: 30))
                .bold()
                .offset(y:10)
                .foregroundColor(Color(uiColor:UIColor.systemGreen))
            Text("年齡40歲\n全名是喜來登．皮，是海中的浮游生物\n腦容量10KB\n蟹老闆的死對頭，常常都會在海綿寶寶的附近出沒\n眼睛時常會刺痛（因為忘記要眨眼）\n個性很邪惡，最大的願望是偷到蟹堡王美味蟹堡的祖傳秘方\n使自己沒生意的餐廳招攬到客人，因此不時闖入蟹老闆經營的蟹堡王，或者使出悲情牌，但都以失敗為收場\n老婆是家裡的一台電腦\n所開的店就在蟹堡王對面，名叫海之霸，時常沒有客人光顧\n有時候會叫海綿寶寶幫他做壞事以坐享其成，但總是得到反效果\n")
                .font(.system(size:16))
                .offset(y:30)
                .padding(EdgeInsets(top: 0, leading: 15, bottom: 0, trailing: 15))
            
        }
        .animation(.easeInOut(duration: 5), value: show)
        //持續時間為5秒，觸發條件是發生變化的.easeInOut值show
        //要搭配animation,transition 才會有效果
        .onAppear {
            show = true
        }
    }
}

#Preview {
    Sheldon()
}

