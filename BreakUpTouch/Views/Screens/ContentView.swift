//
//  ContentView.swift
//  BreakUpTouch
//
//  Created by HI on 2021/09/17.
//

import SwiftUI

struct ContentView: View {
    
    var currentUserID: String? = "nil"
    
    //1018 add
    @State var shouldShowOnboarding: Bool = true
    
    var body: some View {
        
        ZStack {
            if currentUserID != nil {
                
                TabView {
                    NavigationView {
                        MainHomeView(title: "메인페이지")
                    }
                    .tabItem {
                        Image(systemName: "house")
                    }
                    
                    NavigationView {
                        FeedView(posts: PostArrayObject(), title: "게시물")
                    }
                    .tabItem {
                        Image(systemName: "square.and.pencil")
                    }
                    
                    
                    NavigationView {
                        ProfileView(isMyProfile: true, profileDisplayName: "내 프로필", profileIUserID: "")
                    }
                    .tabItem {
                        Image(systemName: "person")
                    }
                }
                .accentColor(Color.MyColorTheme.orangeColor)
                
            }
            else {
                SignInView()
                
                //                //1018 add
                //                if currentUserID != nil {
                //                    fullScreenCover(isPresented: $shouldShowOnboarding) {
                //                        OnboardingViewPart1()
                //                    }
                //                }
                
            }
        }
    }
}


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
