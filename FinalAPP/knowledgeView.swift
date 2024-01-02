import SwiftUI

struct knowledgeView: View {
    var body: some View {
        NavigationStack{
            VStack{
                ScrollView(.vertical, showsIndicators: false){
                    VStack{
                        Text("1.派大星力氣很大，可以搬起自己住的石頭，而海綿寶寶連一根杆子上的兩個洋娃娃都舉不起")
                            .font(.system(size:16))
                            .padding(EdgeInsets(top: 15, leading: 15, bottom: 0, trailing: 15))
                        
                        Text("2.派大星的傢俱雖然都是沙子做的，但是冰箱、電視、檯燈、電話都是有用的，電視還能看椰子劇和用遙控器換台")
                            .font(.system(size:16))
                            .padding(EdgeInsets(top: 15, leading: 15, bottom: 0, trailing: 15))
                        Image("派大星的家")
                            .resizable()
                            .scaledToFit()
                            .frame(width:210,height:120)
                            .clipShape(RoundedRectangle(cornerRadius: 40))
                        Text("3.海綿寶寶考了無數次駕照都過不了，但是派大星躺著用望遠鏡指揮都能讓海綿寶寶通過考試")
                            .font(.system(size:16))
                            .padding(EdgeInsets(top: 15, leading: 15, bottom: 0, trailing: 15))
                        Text("4.海绵寶寶有一次得罪章魚哥，覺得非常對不起想要彌補，但是它自己又沒有拿得出手的東西，因此它就用自己的眼淚做了一件衣服送給章魚哥")
                            .font(.system(size:16))
                            .padding(EdgeInsets(top: 15, leading: 15, bottom: 0, trailing: 15))
                        Image("眼淚衣服")
                            .resizable()
                            .scaledToFit()
                            .frame(width:200,height:120)
                            .clipShape(RoundedRectangle(cornerRadius: 40))
                        Text("5.派大星牙齒也出現過多種形態，有10顆牙齒的狂暴形態也有4顆牙齒的普通形態")
                            .font(.system(size:16))
                            .padding(EdgeInsets(top: 15, leading: 18, bottom: 0, trailing: 15))
                        HStack{
                            Image("派大星牙齒1")
                                .resizable()
                                .scaledToFit()
                                .frame(width:150,height:100)
                                .clipShape(RoundedRectangle(cornerRadius: 40))
                            Image("派大星牙齒2")
                                .resizable()
                                .scaledToFit()
                                .frame(width:150,height:100)
                                .clipShape(RoundedRectangle(cornerRadius: 40))
                        }
                        Text("6.整個比奇堡的人都有臉盲症，只要海綿寶寶戴個鬍子或者戴個帽子就沒人認得出來了，最神奇的就是派美美這一集，派大星換個髮型就能迷倒章魚哥和蟹老闆")
                            .font(.system(size:16))
                            .padding(EdgeInsets(top: 15, leading: 15, bottom: 0, trailing: 15))
                        Image("派大星女裝")
                            .resizable()
                            .scaledToFit()
                            .frame(width:200,height:150)
                            .clipShape(RoundedRectangle(cornerRadius: 40))
                        Text("7.皮老闆最害怕的人就是蟹老闆的女兒珍珍，因為珍珍是一隻抹香鯨，而鯨魚最愛吃的食物就是浮游生物，而皮老闆一家在小時候也曾經因此遭遇鯨魚的襲擊，他和奶奶是唯二的倖存者")
                            .font(.system(size:16))
                            .padding(EdgeInsets(top: 15, leading: 15, bottom: 0, trailing: 15))
                        Text("8.在派大星的族譜中可以看見，其實小蝸是他的遠方表親，為什麼海星和蝸牛會有親屬關係呢？這是因為牠們其實擁有一個相同的特性，那就是再生能力極強")
                            .font(.system(size:16))
                            .padding(EdgeInsets(top: 15, leading: 15, bottom: 0, trailing: 15))
                        Image("親戚")
                            .resizable()
                            .scaledToFit()
                            .frame(width:210,height:150)
                            .clipShape(Circle())
                        Text("9.在海綿寶寶的海底世界裡有火是非常正常的事情，大部分吃的東西都需要火烤之後才能食用，並且火很容易熄滅")
                            .font(.system(size:16))
                            .padding(EdgeInsets(top: 15, leading: 15, bottom: 0, trailing: 15))
                        Text("10.最後，有傳言說每個角色代表七原罪之一\n海綿寶寶代表慾望、章魚哥代表憤怒、派大星代表懶惰、珊迪代表驕傲、皮老闆代表忌妒、蟹老闆代表貪婪、小蝸代表貪食")
                            .font(.system(size:16))
                            .padding(EdgeInsets(top: 15, leading: 15, bottom: 0, trailing: 15))
                        Image("final")
                            .resizable()
                            .scaledToFit()
                            .frame(width:210,height:150)
                        
                    }
                }
            }
            .navigationTitle("冷知識轟炸")
        }
    }
}

#Preview {
    knowledgeView()
}

