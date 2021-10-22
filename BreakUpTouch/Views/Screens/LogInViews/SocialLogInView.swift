//
//  SocialLogInView.swift
//  BreakUpTouch
//
//  Created by HI on 2021/10/07.
//

import SwiftUI

struct SocialLogInView: View {
    var body: some View {
        
        VStack {
            HStack {
                
                Spacer()
                
                VStack(alignment: .leading) {
                    
                    Spacer()
                    Spacer()
                    
                    //MARK: - 상단 문구
                    VStack(alignment: .leading, spacing: 8) {
                        Text("이별터치")
                            .fontWeight(.heavy)
                        
                        Text("당신의 마음을")
                        
                        Text("어루만져 줄게요")
                    }
                    .foregroundColor(.white)
                    .font(.largeTitle)
                    .padding(.bottom)
                    
                    
                    //MARK: - 소셜 로그인
                    VStack(alignment: .leading, spacing: 8) {
                        Text("소셜 계정으로 시작하기")
                            .foregroundColor(.white)
                            .font(.footnote)
                        
                        HStack(spacing: 8) {
                            
                            Button {
                                
                            } label: {
                                Image("Login.apple")
                                    .resizable()
                                    .scaledToFit()
                                    .frame(width: 60, height: 60, alignment: .center)
                            }
                            
                            
                            Button {
                                
                            } label: {
                                Image("Login.kakao")
                                    .resizable()
                                    .scaledToFit()
                                    .frame(width: 60, height: 60, alignment: .center)
                            }
                        }
                    }
                    .padding(.top)
                    
                    Spacer()
                    
                }
                
                Spacer()
                Spacer()
            }
            .padding(.bottom, 30)
            
            //MARK: - 하단 약관 / 이미지
            
            ZStack(alignment: .bottom) {
                
                HStack {
                    
                    Spacer()
                    
                    Image("LoginImage.smile.cut")
                        .resizable()
                        .scaledToFit()
                }
             
                
                Button {
                    
                } label: {
                    Text("가입 시 이용약관 및 개인정보취급방침에 대해 동의하게 됩니다.")
                        .font(.caption2)
                        .underline()
                        .foregroundColor(.white)
                        .padding(.bottom, 20)
                }
                        
            }
            
            //                Image("LoginImage.smile.cut")
            //                    .overlay(
            //                        Button(action: {
            //
            //                        }, label: {
            //                            Text("가입 시 이용약관 및 개인정보취급방침에 대해 동의하게 됩니다.")
            //                                .font(.caption2)
            //                                .underline()
            //                                .padding(.bottom)
            //                                .foregroundColor(.white)
            //                        })
            //                    )
            
            
            
        }
        .frame(maxWidth: .infinity, maxHeight: .infinity)
        .background(Color.MyColorTheme.orangeColor)
        .edgesIgnoringSafeArea(.all)
    }
}

struct SocialLogInView_Previews: PreviewProvider {
    static var previews: some View {
        SocialLogInView()
    }
}
