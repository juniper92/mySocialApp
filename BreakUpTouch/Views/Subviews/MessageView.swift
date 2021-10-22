//
//  MessageView.swift
//  BreakUpTouch
//
//  Created by HI on 2021/09/26.
//

import SwiftUI

struct MessageView: View {
    
    @State var comment: CommentModel
    
    var body: some View {
        HStack {
            
            // MARK: 프로필 사진
            Image("testimage1")
                .resizable()
                .scaledToFill()
                .frame(width: 40, height: 40, alignment: .center)
                .cornerRadius(20)
            
            VStack(alignment: .leading, spacing: 4) {
                
                // MARK: 유저 닉네임
                Text(comment.username)
                    .font(.caption)
                    .foregroundColor(Color.MyColorTheme.orangeColor)
                
                // MARK: 댓글 내용
                Text(comment.content)
                    .padding(.all, 10)
                    .foregroundColor(.primary)
                    .background(Color.MyColorTheme.grayColor)
                    .cornerRadius(10)
            }
            
            Spacer(minLength: 0)
            
        }
    }
}

struct MessageView_Previews: PreviewProvider {
    
    static var comment: CommentModel = CommentModel(commentID: "", userID: "", username: "에리얼", content: "셀카 잘나왔구만 그래", dateCreated: Date())
    
    static var previews: some View {
        MessageView(comment: comment)
            .previewLayout(.sizeThatFits)
    }
}
