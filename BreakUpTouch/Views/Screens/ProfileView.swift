//
//  ProfileView.swift
//  BreakUpTouch
//
//  Created by HI on 2021/09/27.
//

import SwiftUI

struct ProfileView: View {
    
    var isMyProfile: Bool   // 내 프로필인지 아닌지
    @State var profileDisplayName: String   // profileDisplayName은 가변적이므로 @State로 생성
    var profileIUserID: String  // 불변, 각 유저 대해 DB에 하나의 유저ID가 존재
    
    var posts = PostArrayObject()
    
    @State var showSettings: Bool = false
    
    var body: some View {
        ScrollView(.vertical, showsIndicators: false) {
            ProfileHeaderView(profileDisplayName: $profileDisplayName)
            Divider()
            ImageGridView(posts: posts)
        }
        .padding(EdgeInsets(top: 0, leading: 10, bottom: 0, trailing: 10))
        .navigationBarTitle("프로필")
        .navigationBarTitleDisplayMode(.inline)
        .navigationBarItems(trailing:
                                Button(action: {
            showSettings.toggle()
        }, label: {
            Image(systemName: "line.horizontal.3")
                .opacity(isMyProfile ? 1.0 : 0.0)
        })
        )
        .sheet(isPresented: $showSettings) {
            SettingsView()
        }
        .accentColor(Color.MyColorTheme.orangeColor)
        
    }
}

struct ProfileView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationView {
            ProfileView(isMyProfile: true, profileDisplayName: "솜브라", profileIUserID: "")
        }
    }
}
