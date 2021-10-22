//
//  PostArrayObject.swift
//  BreakUpTouch
//
//  Created by HI on 2021/09/24.
//



/* PostArrayObject 만든 이유 : 이후에 DB에서 post를 가져올 때, 여러 개의 다른 이니셜라이저들을 호출하기 위해.
 왜? 가끔 게시물을 받아야 할 때, 가장 최근의 게시물을 얻어야 하기 떄문에.
 때로는 특정 유저만을 위한 게시물만 올리기도 하고, 때로는 랜덤 게시물 등을 얻을 수도 있다.
 그래서 PostArrayObject 만들어서, 내가 원하는 대로 이 init을 변경 가능.*/

import Foundation

class PostArrayObject: ObservableObject {
    
    @Published var dataArray = [PostModel]()
    
    init() {
        
        print("FETCH FROM DATABASE HERE")
        
        let post1 = PostModel(postID: "", userID: "", username: "에리얼", caption: "인어꼬리요리는 맛있나요", dataCreated: Date(), likeCount: 0, likedByUser: false)
        
        let post2 = PostModel(postID: "", userID: "", username: "솜브라", caption: nil, dataCreated: Date(), likeCount: 0, likedByUser: false)

        let post3 = PostModel(postID: "", userID: "", username: "아리", caption: "인어꼬리냐 여우꼬리냐 그것이 문제로다", dataCreated: Date(), likeCount: 0, likedByUser: false)
        
        let post4 = PostModel(postID: "", userID: "", username: "엘사", caption: "추워 이년아", dataCreated: Date(), likeCount: 0, likedByUser: false)


        self.dataArray.append(post1)
        self.dataArray.append(post2)
        self.dataArray.append(post3)
        self.dataArray.append(post4)

    }
    
    /// USED FOR SINGLE POST SELECTION 
    init(post: PostModel) {
        self.dataArray.append(post)
    }
}
