//
//  ImageGridView.swift
//  BreakUpTouch
//
//  Created by HI on 2021/09/26.
//

import SwiftUI

struct ImageGridView: View {
    
    @ObservedObject var posts: PostArrayObject
    
    var body: some View {
        LazyVGrid(
            columns: [
                GridItem(.flexible()),
                GridItem(.flexible()),
                GridItem(.flexible()),
            ],
            alignment: .center,
            spacing: nil,
            pinnedViews: []) {
                ForEach(posts.dataArray, id: \.self) { post in
                    
                    NavigationLink {
                        FeedView(posts: PostArrayObject(post: post), title: "게시물")
                    } label: {
                        PostView(post: post, showHeaderAndFooter: false)
                            .padding(.all, -15)
                    }
                }
            }
    }
}

struct ImageGridView_Previews: PreviewProvider {
    static var previews: some View {
        ImageGridView(posts: PostArrayObject())
            .previewLayout(.sizeThatFits)
    }
}
