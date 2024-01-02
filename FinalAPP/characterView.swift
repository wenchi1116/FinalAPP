import SwiftUI


struct characterView: View {
    var body: some View {
        NavigationStack{
            VStack{
                ScrollView(.vertical, showsIndicators: false){
                    HStack{
                        NavigationLink {
                            //跳到的畫面
                            SpongeBob()
                        }label: {
                            //點選的東西
                            Image("海綿寶寶")
                                .resizable()
                                .scaledToFit()
                                .frame(width:200 , height:200)
                                .offset(x:-20)
                        }
                        Text("海綿寶寶")
                            .font(.system(size:25))
                            .bold()
                            .offset(x:-40)
                    }
                    
                    HStack{
                        NavigationLink {
                            //跳到的畫面
                            Patrick()
                        }label: {
                            //點選的東西
                            Image("派大星")
                                .resizable()
                                .scaledToFit()
                                .frame(width:150 , height:150)
                                .offset(x:-40,y:-20)
                        }
                        Text("派大星")
                            .font(.system(size:25))
                            .bold()
                            .offset(x:-20,y:-20)
                    }
                    
                    HStack{
                        NavigationLink {
                            //跳到的畫面
                            Squidward()
                        }label: {
                            //點選的東西
                            Image("章魚哥")
                                .resizable()
                                .scaledToFit()
                                .frame(width:150 , height:150)
                                .offset(x:-40)
                        }
                        Text("章魚哥")
                            .font(.system(size:25))
                            .bold()
                            .offset(x:-20)
                    }
                    
                    HStack{
                        NavigationLink {
                            //跳到的畫面
                            Eugene()
                        }label: {
                            //點選的東西
                            Image("蟹老闆")
                                .resizable()
                                .scaledToFit()
                                .frame(width:170 , height:180)
                                .offset(x:-40,y:10)
                        }
                        Text("蟹老闆")
                            .font(.system(size:25))
                            .bold()
                            .offset(x:-30,y:10)
                    }
                    
                    HStack{
                        NavigationLink {
                            //跳到的畫面
                            Sheldon()
                        }label: {
                            //點選的東西
                            Image("皮老闆")
                                .resizable()
                                .scaledToFit()
                                .frame(width:150 , height:150)
                                .offset(x:-40,y:10)
                        }
                        Text("皮老闆")
                            .font(.system(size:25))
                            .bold()
                            .offset(x:-20)
                    }
                    
                    HStack{
                        NavigationLink {
                            //跳到的畫面
                            Sandy()
                        }label: {
                            //點選的東西
                            Image("珊迪")
                                .resizable()
                                .scaledToFit()
                                .frame(width:150 , height:150)
                                .offset(x:-50,y:10)
                        }
                        Text("珊迪")
                            .font(.system(size:25))
                            .bold()
                            .offset(x:-30,y:10)
                    }
                }
            }
            .navigationTitle("角色介紹")
        }
    }
}


#Preview {
    characterView()
}

