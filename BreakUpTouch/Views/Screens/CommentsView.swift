//
//  CommentsView.swift
//  BreakUpTouch
//
//  Created by HI on 2021/09/24.
//

import SwiftUI

struct CommentsView: View {
    
    @State var submissionText: String = ""
    
    /* CommentArrayObject 만들지 않은 이유 : 댓글이 올라올 때마다, 댓글을 모두 받아서 정렬할 뿐이기 때문.
     따라서 하나의 기능-함수-이기에, 실제로 PostArrayObject처럼 CommentArrayObjet을 만들 필요 없음.
     대신 commentArray 추가함.*/
    @State var commentArray = [CommentModel]()
    
    var body: some View {
        VStack {
            
            ScrollView {
                LazyVStack {
                    ForEach (commentArray, id: \.self) { comment in
                        MessageView(comment: comment)
                    }
                }
            }
            
            HStack {
                Image("testimage1")
                    .resizable()
                    .scaledToFill()
                    .frame(width: 40, height: 40, alignment: .center)
                    .cornerRadius(20)
                
                // 바인딩은 기본적으로 textfield가 text변경 시 변수도 동시에 변경된다.
                TextField("이곳에 댓글을 입력하세요...", text: $submissionText)
                
                Button {
                    
                } label: {
                    Image(systemName: "arrow.left.circle.fill")
                        .font(.title2)
                }
                .accentColor(Color.MyColorTheme.orangeColor)
            }
            .padding(.all, 6)
        }
        .padding()
        .navigationBarTitle("댓글")
        .navigationBarTitleDisplayMode(.inline)
        .onAppear {
            getComments()
        }
    }
    
    
    // MARK: FUNCTIONS
    
    func getComments() {
        
        print("GET COMMENTS FORM DATABASE")
        
        let comment1 = CommentModel(commentID: "", userID: "", username: "에리얼", content: "첫번째 댓글입니다", dateCreated: Date())
        let comment2 = CommentModel(commentID: "", userID: "", username: "솜브라", content: "두번째 댓글입니다", dateCreated: Date())
        let comment3 = CommentModel(commentID: "", userID: "", username: "메르시", content: "세번째 댓글입니다", dateCreated: Date())
        let comment4 = CommentModel(commentID: "", userID: "", username: "엘사", content: "네번쨰 댓글입니다", dateCreated: Date())
        
        self.commentArray.append(comment1)
        self.commentArray.append(comment2)
        self.commentArray.append(comment3)
        self.commentArray.append(comment4)

    }
}

struct CommentsView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationView {
            CommentsView()
        }
    }
}
