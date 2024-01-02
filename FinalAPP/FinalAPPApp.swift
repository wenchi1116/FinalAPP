import SwiftUI

@main
struct FinalAPPApp: App {
    @StateObject private var loginData = Login()
        var body: some Scene {
            WindowGroup {
                if loginData.token == ""
                {
                    SignInView().environmentObject(loginData)
                }else{
                    ContentView().environmentObject(loginData)
                }
                //zContentView()
            }
        }
}
