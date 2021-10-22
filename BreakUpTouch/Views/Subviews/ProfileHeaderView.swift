//
//  ProfileHeaderView.swift
//  BreakUpTouch
//
//  Created by HI on 2021/09/27.
//

import SwiftUI

struct ProfileHeaderView: View {
    
    @Binding var profileDisplayName: String
    
    var body: some View {
        VStack(alignment: .center, spacing: 5) {
            
            HStack(alignment: .center, spacing: 20) {
                
                // MARK: 미션 개수
                VStack(alignment: .center, spacing: 2) {
                    
                    Text("5")
                        .font(.title3)
                        .fontWeight(.bold)
                    
                    Text("미션")
                        .font(.callout)
                        .fontWeight(.medium)
                }
                
                // MARK: 게시물 개수
                VStack(alignment: .center, spacing: 2) {
                    
                    Text("20")
                        .font(.title3)
                        .fontWeight(.bold)
                    
                    Text("게시물")
                        .font(.callout)
                        .fontWeight(.medium)
                }
            }
            
            
            // MARK: 프로필 사진
            Image("testimage6")
                .resizable()
                .scaledToFill()
                .frame(width: 100, height: 100, alignment: .center)
                .cornerRadius(60)
            
            // MARK: 유저 닉네임
            Text(profileDisplayName)
                .font(.title2)
                .fontWeight(.bold)
            
            // MARK: 상태메시지
            Text("거점을 차지하는 중이야, 바쁘지 않으면 좀 거들어.")
                .font(.body)
                .fontWeight(.regular)
                .multilineTextAlignment(.center)
            
        }
        .frame(maxWidth: .infinity) // 프레임 폭 설정
        .padding()
    }
}

struct ProfileHeaderView_Previews: PreviewProvider {
    
    @State static var name: String = "솜브라"
    
    static var previews: some View {
        ProfileHeaderView(profileDisplayName: $name)
            .previewLayout(.sizeThatFits)
    }
}
