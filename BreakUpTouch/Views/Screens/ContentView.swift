//
//  ContentView.swift
//  BreakUpTouch
//
//  Created by HI on 2021/09/17.
//

import SwiftUI

struct ContentView: View {
    
    // OnboardingViews...
    @AppStorage("currentPage") var currentPage = 1
    
//    var currentUserID: String? = nil
    
    var body: some View {
        
        ZStack {
            if currentPage > totalPages{
                
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
            }
        }
    }
}


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

var totalPages = 2
