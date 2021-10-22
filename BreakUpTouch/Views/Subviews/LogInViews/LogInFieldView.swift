//
//  LogInFieldView.swift
//  BreakUpTouch
//
//  Created by HI on 2021/10/09.
//

import SwiftUI

struct LogInFieldView: View {
    
    @State private var email: String = ""
    @State var password: String = ""
    
    var body: some View {
        
        //MARK: - 상단 입력뷰
        VStack(spacing: 15) {
            TextFieldView(text: $email, placeholder: Text("  이메일 입력"), imageName: "envelope")
                .padding()
                .background(Capsule().fill(Color(.init(white: 1, alpha: 0.15))))
                .cornerRadius(25)
                .foregroundColor(.white)
                .padding(.horizontal, 30)
            
            SecureTextFieldView(text: $password, placeholder: Text("  비밀번호 입력"))
                .padding()
                .background(Capsule().fill(Color(.init(white: 1, alpha: 0.15))))
                .cornerRadius(25)
                .foregroundColor(.white)
                .padding(.horizontal, 30)
            
            
            //MARK: - 로그인 버튼
            Button {
                
            } label: {
                Text("로그인")
                    .font(.title3)
                    .fontWeight(.heavy)
                    .padding()
                    .frame(height: 60)
                    .frame(maxWidth: .infinity)
                    .background(Capsule().fill(Color(.white)))
                    .padding(.horizontal, 30)
                
            }
            .accentColor(Color.MyColorTheme.orangeColor)
            
            //MARK: - 하단 메뉴
            HStack(spacing: 18) {
                
                Spacer()
                
                // 회원가입
                NavigationLink {
                    RegistrationView()
                } label: {
                    Text("회원가입")
                        .font(.callout)
                }

                
                Text("|")
                    .fontWeight(.thin)
                
                // 이메일 찾기
                Button {
                    
                } label: {
                    Text("이메일 찾기")
                        .font(.callout)

                }
                
                
                Text("|")
                    .fontWeight(.thin)
                
                // 비밀번호 찾기
                Button {
                    
                } label: {
                    Text("비밀번호 찾기")
                        .font(.callout)

                }
                
                Spacer()
                
            } //: HStack
            .foregroundColor(Color.white)

            
            
            Spacer()
            
        } //: VStack
        .frame(maxHeight: .infinity)
        .padding(.top)
        .padding(.bottom)
    }
}

struct LogInFieldView_Previews: PreviewProvider {
    static var previews: some View {
        LogInFieldView()
            .previewLayout(.sizeThatFits)
            .background(Color.MyColorTheme.orangeColor)
    }
}
