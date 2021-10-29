//
//  SettingsView.swift
//  BreakUpTouch
//
//  Created by HI on 2021/09/28.
//

import SwiftUI

struct SettingsView: View {
    
    @Environment(\.presentationMode) var presentationMode
        
    var body: some View {
        NavigationView {
            ScrollView(.vertical, showsIndicators: false) {
                
                // MARK: 항목1 프로필 관리
                GroupBox(label: SettingsLabelView(labelText: "프로필 관리", labelImage: "person.fill")) {
                    
                    
                    // MARK: 사진변경
                    NavigationLink {
                        SettingsEditImageView(title: "사진변경", description: "프로필 사진을 변경합니다.", selectedImage: UIImage(named: "testimage8")!)
                    } label : {
                        SettingsRowView(leftIcon: "person.fill.viewfinder", text: "사진변경", color: Color.MyColorTheme.orangeColor)
                    }
                    
                    
                    // MARK: 정보변경
                    NavigationLink {
                        SettingsEditTextView(displayNameSubmissionText: "현재 닉네임", bioSubmissionText: "현재 상태메시지",title: "정보변경", description: "닉네임과 상태메시지를 변경합니다.", displayNamePlaceholder: "닉네임을 입력해주세요...", bioPlaceholder: "상태메시지를 입력해주세요...")
                    } label: {
                        SettingsRowView(leftIcon: "square.and.pencil", text: "정보변경", color: Color.MyColorTheme.orangeColor)
                    }
                    
                }
                .padding()
                
                
                // MARK: 항목2 환경설정
                GroupBox(label: SettingsLabelView(labelText: "환경설정", labelImage: "doc.badge.gearshape.fill")) {
                    
                    // MARK: 로그아웃
                    SettingsRowView(leftIcon: "figure.walk", text: "로그아웃", color: Color.MyColorTheme.orangeColor)
                    
                    // MARK: 회원탈퇴
                    SettingsRowView(leftIcon: "arrow.turn.up.right", text: "회원탈퇴", color: Color.MyColorTheme.orangeColor)
                    
                    // MARK: 챗봇연결
                    Button {
                        openChatbotURL(urlString: "")
                    } label: {
                        SettingsRowView(leftIcon: "exclamationmark.bubble.fill", text: "문의하기", color: Color.MyColorTheme.orangeColor)
                    }
                    
                }
                .padding()
                
                
                // MARK: 
                GroupBox {
                    Text("")
                        .foregroundColor(.gray)
                        .multilineTextAlignment(.center)
                        .frame(maxWidth: .infinity)
                }
                .padding()
                .padding(.bottom, 60)
                
            }
            .navigationBarTitle("설정")
            .navigationBarTitleDisplayMode(.large)
            .navigationBarItems(
                leading:
                    Button(action: {
                        presentationMode.wrappedValue.dismiss()
                    }, label: {
                        Image(systemName: "xmark")
                            .font(.title2)
                    })
                    .accentColor(.gray)
            )
        }
        .accentColor(Color.MyColorTheme.orangeColor)
    }
    
    
    // MARK: FUNCTIONS
    
    func openChatbotURL(urlString: String) {
        guard let url = URL(string: urlString) else { return }
        
        if UIApplication.shared.canOpenURL(url) {
            UIApplication.shared.open(url)
        }
    }
}


struct SettingsView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationView {
            SettingsView()
        }
    }
}
