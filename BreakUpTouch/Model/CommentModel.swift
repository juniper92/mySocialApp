//
//  CommentModel.swift
//  BreakUpTouch
//
//  Created by HI on 2021/09/26.
//

import Foundation
import SwiftUI

struct CommentModel: Identifiable, Hashable {
    
    var id = UUID()
    var commentID: String   // DB에 저장되는 댓글ID
    var userID: String      // DB에 저장되는 유저ID
    var username: String    // DB에 저장되는 유저의 닉네임
    var content: String     // 유저가 실제로 남긴 댓글
    var dateCreated: Date   // 댓글이 생성된 날짜 
    
    func hash(into hasher: inout Hasher) {
        hasher.combine(id)
    }
}
