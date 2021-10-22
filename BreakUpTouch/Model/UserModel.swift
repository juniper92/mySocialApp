//
//  UserModel.swift
//  BreakUpTouch
//
//  Created by HI on 2021/10/13.
//


//MARK: - TODO 유저 초기 가입시 데이터 구조 설정하기
import Foundation
import SwiftUI

struct UserModel: Identifiable, Hashable {

    var id = UUID()
    var gender: String      // DB에 저장되는 유저 성별
    var userID: String      // DB에 저장되는 유저ID
    var username: String    // DB에 저장되는 유저의 닉네임
    var currentStatement: [String]     // 유저의 현재 상태
    var dateCreated: Date   // 가입한 날짜
    
    func hash(into hasher: inout Hasher) {
        hasher.combine(id)
    }
}
