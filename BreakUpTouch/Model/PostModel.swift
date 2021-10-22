//
//  PostModel.swift
//  BreakUpTouch
//
//  Created by HI on 2021/09/24.
//

import Foundation
import SwiftUI

struct PostModel: Identifiable, Hashable {
    
    var id = UUID()
    var postID: String  // DB에 저장되는 게시물 ID
    var userID: String  // DB에 저장되는 사용자 ID
    var username: String    // DB에 저장되는 사용자 이름
    var caption: String?
    var dataCreated: Date
    var likeCount: Int
    var likedByUser: Bool   // 사용자가 게시물을 좋아하는지 여부    
    
    func hash(into hasher: inout Hasher) {
        hasher.combine(id)
    }
}
