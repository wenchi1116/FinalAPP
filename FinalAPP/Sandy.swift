import SwiftUI

struct Sandy: View {
    var body: some View {
        VStack{
            HStack{
                Image("珊迪2")
                    .resizable()
                    .scaledToFit()
                    .frame(width:150 , height:150)
                    .offset(y:-20)
                Image("珊迪3")
                    .resizable()
                    .scaledToFit()
                    .frame(width:180 , height:180)
                    .offset(y:-10)
            }
            HStack{
                Image("珊迪大猩猩1")
                    .resizable()
                    .scaledToFit()
                    .frame(width:150 , height:150)
                    .offset(y:-30)
                    .clipShape(RoundedRectangle(cornerRadius: 5))
                Image("珊迪大猩猩2")
                    .resizable()
                    .scaledToFit()
                    .frame(width:150 , height:150)
                    .offset(y:-30)
                    .clipShape(RoundedRectangle(cornerRadius: 5))
            }
            Text("珊迪")
                .font(.system(size: 30))
                .bold()
                .offset(y:-30)
                .foregroundColor(Color(uiColor:UIColor.purple))
            
            Text("年齡20歲\n住在海底下的松鼠，職業是發明家，海綿寶寶的好朋友\n來自德克薩斯州，武功高強，會空手道\n由於松鼠是陸上生物，所以珊迪需要呼吸空氣\n出門都必須穿潛水衣和頭盔，在海底的住家有大型防護罩\n海底樹屋裡面抽光了水而灌了空氣，有花、草坪、一棵樹，屋內有四季更替，如同陸地\n有一集海綿寶寶來造訪但最後差點乾死，當然也有珊迪拔下頭盔差點淹死的一次\n珊迪冬眠時，心情會很差，被叫醒會變得像大猩猩一樣\n曾與海綿寶寶假結婚過")
                .font(.system(size:16))
                .offset(y:-20)
                .padding(EdgeInsets(top: 0, leading: 15, bottom: 0, trailing: 15))
        }
    }
}

#Preview {
    Sandy()
}

