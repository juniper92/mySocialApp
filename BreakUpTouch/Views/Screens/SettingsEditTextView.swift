//
//  SettingsEditTextView.swift
//  BreakUpTouch
//
//  Created by HI on 2021/09/30.
//

import SwiftUI

struct SettingsEditTextView: View {
    
    @State var displayNameSubmissionText: String = ""
    @State var bioSubmissionText: String = ""
    @State var title: String
    @State var description: String
    @State var displayNamePlaceholder: String
    @State var bioPlaceholder: String

    
    var body: some View {
        VStack {
            
            HStack {
                Text(description)
                Spacer(minLength: 0)
            }
            
            Divider().padding(.bottom, 20)
            
            TextField(displayNamePlaceholder, text: $displayNameSubmissionText)
                .padding()
                .frame(height: 60)
                .frame(maxWidth: .infinity)
                .background(Color.MyColorTheme.lightgrayColor)
                .cornerRadius(12)
                .font(.headline)
                .autocapitalization(.sentences)
            
            TextField(bioPlaceholder, text: $bioSubmissionText)
                .padding()
                .frame(height: 60)
                .frame(maxWidth: .infinity)
                .background(Color.MyColorTheme.lightgrayColor)
                .cornerRadius(12)
                .font(.headline)
                .autocapitalization(.sentences)
            
            Button {
                
            } label: {
                Text("저장하기")
                    .font(.title3)
                    .fontWeight(.bold)
                    .padding()
                    .frame(height: 60)
                    .frame(maxWidth: .infinity)
                    .background(Color.MyColorTheme.orangeColor)
                    .cornerRadius(12)
            }
            .accentColor(Color.white)

            
            Spacer()
            
        }
        .padding()
        .frame(maxWidth: .infinity)
        .navigationBarTitle(title)
    }
}

struct SettingsEditTextView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationView {
            SettingsEditTextView(title: "프로필 변경", description: "닉네임과 상태메시지를 변경합니다", displayNamePlaceholder: "변경할 닉네임 입력", bioPlaceholder: "변경할 상태메시지 입력")
        }
    }
}
