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
    
    struct Gender : Identifiable {
        var id: String = UUID().uuidString
        var title: String
    }
    
    var userID: String      // DB에 저장되는 유저ID
    var username: String    // DB에 저장되는 유저의 닉네임
    
    // 유저 현재상태
    struct UserState: Identifiable {
        
        var id: String = UUID().uuidString
        var image: String
        var title: String
    }
    
    // 이별 전
    struct UserStateBefore: Identifiable {

        var id: String = UUID().uuidString
        var title: String
    }
    
    // 이별 후 슬픔
    struct UserStateAfter: Identifiable {

        var id: String = UUID().uuidString
        var title: String
    }

    // 이별 후 분노
    struct UserStateAnger: Identifiable {

        var id: String = UUID().uuidString
        var title: String
    }
    
    var dateCreated: Date   // 가입한 날짜
    
    func hash(into hasher: inout Hasher) {
        hasher.combine(id)
    }
}


var genders = [
    UserModel.Gender(title: "여성"),
    UserModel.Gender(title: "남성")
]

var userstate = [
    UserModel.UserState(image: "Imozi.soso" ,title: "이별 전 상태"),
    UserModel.UserState(image: "Imozi.sad" ,title: "이별 후 슬픔"),
    UserModel.UserState(image: "Imozi.angry" ,title: "이별 후 분노")
]


var before = [

    UserModel.UserStateBefore(title: "성격차이"),
    UserModel.UserStateBefore(title: "바람"),
    UserModel.UserStateBefore(title: "기타")

]


var after = [

//    UserStateAfter(title: "성격차이"),
    UserModel.UserStateAfter(title: "성격차이"),
    UserModel.UserStateAfter(title: "바람"),
    UserModel.UserStateAfter(title: "기타")

]


var anger = [

    UserModel.UserStateAnger(title: "성격차이"),
    UserModel.UserStateAnger(title: "바람"),
    UserModel.UserStateAnger(title: "기타")

]
