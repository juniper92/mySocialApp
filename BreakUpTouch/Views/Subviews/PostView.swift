//
//  PostView.swift
//  BreakUpTouch
//
//  Created by HI on 2021/09/23.
//

import SwiftUI

struct PostView: View {
    
    @State var post: PostModel
    var showHeaderAndFooter: Bool
    
    var body: some View {
        VStack(alignment: .center, spacing: 0) {
            
            // MARK: HEADER
            if showHeaderAndFooter {
                HStack {
                    
                    NavigationLink {
                        ProfileView(isMyProfile: false, profileDisplayName: post.username, profileIUserID: post.userID)
                    } label: {
                        Image("testimage1")
                            .resizable()
                            .scaledToFill()
                            .frame(width: 30, height: 30, alignment: .center)
                            .cornerRadius(15)
                        
                        Text(post.username)
                            .font(.callout)
                            .fontWeight(.medium)
                            .foregroundColor(.primary)
                    }
//                    .padding(EdgeInsets(top: 10, leading: 10, bottom: 0, trailing: 0))
                   
                    Spacer()
                    
                    Image(systemName: "ellipsis")
                        .font(.headline)
                }
                .padding(.all, 7)
            }
           
            
            // MARK: IMAGE
            
            Image("testimage1")
                .resizable()
                .scaledToFit()
                .cornerRadius(14)
//                .padding()
//                .padding(.top, -20)
            
            
            // MARK: FOOTER
            if showHeaderAndFooter {
                
                // caption = optional
                if let caption = post.caption {
                    HStack {
                        Text(caption)
                        
                        Spacer(minLength: 0)
                    }
                    .padding(EdgeInsets(top: 12, leading: 7, bottom: 11, trailing: 7))
                }
                
                
                CustomDivider()
                    .padding(.horizontal, 7)
                
                
                // MARK: 댓글 아이콘
                HStack(alignment: .center, spacing: 20) {
                    
                    NavigationLink {
                        CommentsView()
                    } label: {
                        Image(systemName: "bubble.left.and.bubble.right")
                            .font(.headline.bold())
                            .foregroundColor(Color.MyColorTheme.orangeColor)
                        
                        Text("댓글보기")
                            .font(.callout.bold())
                            .foregroundColor(Color.MyColorTheme.orangeColor)
                    }
                    
                    Spacer()
                }
                .padding(.all, 7)

            }

        }
        .padding()
    }

}


//MARK: - Custom Divider
struct CustomDivider: View {
    let color: Color = Color.MyColorTheme.fontLightgrayColor
    let width: CGFloat = 0.7
    var body: some View {
        Rectangle()
            .fill(color)
            .frame(height: width)
            .edgesIgnoringSafeArea(.horizontal)
    }
}

struct PostView_Previews: PreviewProvider {
    
    static var post: PostModel = PostModel(postID: "", userID: "", username: "에리얼", caption: "인어꼬리요리는 맛있나요", dataCreated: Date(), likeCount: 0, likedByUser: false)
    
    static var previews: some View {
        PostView(post: post, showHeaderAndFooter: true)
            .previewLayout(.sizeThatFits)
    }
}
