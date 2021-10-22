//
//  FeedView.swift
//  BreakUpTouch
//
//  Created by HI on 2021/09/23.
//

import SwiftUI

struct FeedView: View {
    
    @ObservedObject var posts: PostArrayObject
    var title: String
    
    
    var body: some View {
        ZStack {
            ScrollView(.vertical, showsIndicators: false) {
                LazyVStack {
                    ForEach(posts.dataArray, id: \.self) { post in
                        PostView(post: post, showHeaderAndFooter: true)
                    }
                }
            }
            
            
            VStack {
                Spacer()
                
                HStack {
                    Spacer()
                    
                    NavigationLink {
                        UploadView()
                    } label: {
                        Image(systemName: "plus.circle.fill")
                            .resizable()
                            .scaledToFit()
                            .frame(width: 65, height: 65, alignment: .bottomTrailing)
                            .foregroundColor(Color.MyColorTheme.orangeColor)
                            .shadow(radius: 20)
                    }
                    .padding()
                    .padding(.trailing, 10)
                }
                
                .navigationBarTitle(title)
                .navigationBarTitleDisplayMode(.inline)
                
                
                // MARK: TODO - 데이터 잘 받아오는지 체크
                .navigationBarItems(
                    trailing:
                        NavigationLink(
                            destination: {
                                BrowseView()
                            }, label: {
                                Image(systemName: "magnifyingglass")
                            }).accentColor(Color.MyColorTheme.orangeColor)
                )
            }
        }
    }
}

struct FeedView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationView {
            FeedView(posts: PostArrayObject(), title: "검색")
        }
    }
}
