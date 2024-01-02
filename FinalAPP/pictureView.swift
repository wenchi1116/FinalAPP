import SwiftUI

struct pictureView: View {
    var body: some View {
        NavigationStack{
            VStack{
                ScrollView(.vertical, showsIndicators: false){
                    VStack{
                        Image("你為什麼不問問神奇海螺呢")
                            .resizable()
                            .scaledToFit()
                            .frame(width:310 , height:250)
                        Image("我好愛你")
                            .resizable()
                            .scaledToFit()
                            .frame(width:310 , height:250)
                        Image("人生就是不公平 早點習慣吧")
                            .resizable()
                            .scaledToFit()
                            .frame(width:310 , height:250)
                        Image("我好孤單")
                            .resizable()
                            .scaledToFit()
                            .frame(width:310 , height:250)
                        Image("祝你生日快樂")
                            .resizable()
                            .scaledToFit()
                            .frame(width:310 , height:250)
                        Image("好可憐哦")
                            .resizable()
                            .scaledToFit()
                            .frame(width:310 , height:250)
                        Image("真的好想好想要")
                            .resizable()
                            .scaledToFit()
                            .frame(width:310 , height:250)
                        Image("我需要錢")
                            .resizable()
                            .scaledToFit()
                            .frame(width:310 , height:250)
                        Image("課本沒有教耶")
                            .resizable()
                            .scaledToFit()
                            .frame(width:310 , height:250)
                        Image("至少我們還擁有彼此啊")
                            .resizable()
                            .scaledToFit()
                            .frame(width:310 , height:250)
                        Image("好棒 三點了")
                            .resizable()
                            .scaledToFit()
                            .frame(width:310 , height:250)
                        Image("今天很嗆是吧")
                            .resizable()
                            .scaledToFit()
                            .frame(width:310 , height:250)
                        
                        
                    }
                }
            }
            .navigationTitle("一堆超有料梗圖")
        }
    }
}

#Preview {
    pictureView()
}

