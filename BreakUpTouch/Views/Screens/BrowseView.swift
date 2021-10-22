//
//  BrowseView.swift
//  BreakUpTouch
//
//  Created by HI on 2021/09/26.
//

import SwiftUI

struct BrowseView: View {
    @State var searchText: String = ""
    
    var posts = PostArrayObject()
    
    var body: some View {
        VStack {
            HStack {
                SearchBarView(text: $searchText)
                    .padding(EdgeInsets(top: 12, leading: 12, bottom: 12, trailing: 5))
                
                
                Button {
                    //MARK: TODO - 필터링기능삽입
                } label: {
                    Image(systemName: "slider.horizontal.3")
                        .padding(.trailing)
                        .font(.title2)
                        .accentColor(Color.MyColorTheme.orangeColor)
                }

                
            }
            
            ScrollView(.vertical, showsIndicators: false) {
                ImageGridView(posts: posts)
            }
            .padding(EdgeInsets(top: 0, leading: 10, bottom: 0, trailing: 10))
            .navigationBarTitle("검색")
        .navigationBarTitleDisplayMode(.inline)
        }
    }
}

struct BrowseView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationView{
            BrowseView()
        }
    }
}
