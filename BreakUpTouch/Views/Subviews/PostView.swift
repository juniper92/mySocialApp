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
    
    @State var showActionSheet: Bool = false
    @State var actionSheetType: PostActionSheetOption = .general
    
    enum PostActionSheetOption {
        case general
        case reporting
    }
    
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
                    
                    Button {
                        showActionSheet.toggle()
                    } label: {
                        Image(systemName: "ellipsis")
                            .font(.headline)
                    }
                    .accentColor(Color.MyColorTheme.fontDarkgrayColor)
                    .actionSheet(isPresented: $showActionSheet) {
                        getActionSheet()
                    }
                    
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
                            .font(.headline)
                            .foregroundColor(Color.MyColorTheme.orangeColor)
                        
                        Text("댓글보기")
                            .font(.callout.bold())
                            .foregroundColor(Color.MyColorTheme.orangeColor)
                    }
                    
                    Spacer()
                    
                    
//                    //MARK: - 게시물 공유
//                    Button {
//                        sharePost()
//                    } label: {
//                        Image(systemName: "tray.and.arrow.up")
//                            .font(.title3)
//                            .foregroundColor(Color.MyColorTheme.orangeColor)
//                    }
                    
                }
                .padding(.all, 7)

            }

        }
        .padding()
    }
    
    
    //MARK: - FUNCTION
    
    func getActionSheet() -> ActionSheet {
        switch self.actionSheetType {
        case .general:
            return ActionSheet(title: Text("What would you like to do?"), message: nil, buttons: [
                .destructive(Text("Reoprt"), action: {
                    
                    self.actionSheetType = .reporting
                    DispatchQueue.main.asyncAfter(deadline: .now() + 0.5) {
                        self.showActionSheet.toggle()
                    }
                }),
                
                    .default(Text("Learn more..."), action: {
                        print("LEARN MORE PRESSED")
                    }),
                
                    .cancel()
            ])
            
        case .reporting:
            return ActionSheet(title: Text("Why are you reoprting this post?"), message: nil, buttons: [
                .destructive(Text("This is inappropriate"), action: {
                    reportPost(reason: "This is inappropriate")
                }),
                .destructive(Text("This is spam"), action: {
                    reportPost(reason: "This is spam")
                }),
                .destructive(Text("It made me uncomfortable"), action: {
                    reportPost(reason: "It made me uncomfortable")
                }),
                
                    .cancel({
                        self.actionSheetType = .general
                    })
            ])
        
        }
    }
    
    func reportPost(reason: String) {
        print("REPORT POST NOW")
    }
    
//    func sharePost() {
//
//        let activityViewController = UIActivityViewController(activityItems: <#T##[Any]#>, applicationActivities: nil)
//
//    }
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
