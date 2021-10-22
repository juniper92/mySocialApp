//
//  LoginView.swift
//  BreakUpTouch
//
//  Created by HI on 2021/10/05.
//

import SwiftUI

struct SignInView: View {
    
    @State var showTermsAndConditions: Bool = false
    
    @State var showOnboardingPageView: Bool = false

    var body: some View {
        
        VStack {
            
            Spacer()
            
            // MARK: TITLE
            HStack {
                
                Spacer()
                
                VStack(alignment: .leading) {
                    
                    Text("이별터치")
                        .font(.largeTitle)
                        .fontWeight(.heavy)
                        .foregroundColor(Color.white)
                        .padding(.bottom, -5)
                    
                    Text("당신의 마음을\n어루만져 줄게요")
                        .font(.largeTitle)
                        .foregroundColor(Color.white)
                        .lineSpacing(6)
                        .padding(.top, 3)
                    
                    
                    // MARK: LOGIN BUTTON
                    VStack(alignment: .leading) {
                        Text("소셜 계정으로 시작하기")
                            .font(.subheadline)
                            .foregroundColor(Color.white)
                        
                        HStack {
                            //MARK: - APPLE
                            Button {
                                showOnboardingPageView.toggle()
                            } label: {
                                Image("Login.apple")
                                    .resizable()
                                    .scaledToFit()
                                    .frame(width: 65, height: 65, alignment: .leading)
                            }
                            
                            //MARK: - KAKAO
                            Button {
                                showOnboardingPageView.toggle()
                            } label: {
                                Image("Login.kakao")
                                    .resizable()
                                    .scaledToFit()
                                    .frame(width: 65, height: 65, alignment: .leading)
                            }
                        }
                    }
                    .padding(.top, 20)
                }
                .padding(.bottom, -30)
                
                Spacer()
                Spacer()
            }
            .padding(.leading)
            
            
            Spacer()
            
            
            Image("LoginImage.smile.circle")
                .resizable()
                .scaledToFill()
                .frame(width: 350, height: 250, alignment: .center)
                .padding(.leading, 220)
                .overlay(
                    Button {
                        showTermsAndConditions.toggle()
                    } label: {
                        Text("가입 시 이용약관 및 개인정보취급방침에 대해 동의하게 됩니다.")
                            .font(.caption2)
                            .foregroundColor(Color.white)
                            .underline()
                            .padding()
                    }
                )
                .sheet(isPresented: $showTermsAndConditions) {
                    TermsAndConditionsView()
                }
                .padding(.bottom, -20)
                .padding(.bottom, -100)
     
        }
        .padding(.all, 20)
        .frame(maxWidth: .infinity, maxHeight: .infinity)
        .background(Color.MyColorTheme.orangeColor)
        .edgesIgnoringSafeArea(.all)
        .fullScreenCover(isPresented: $showOnboardingPageView) {
            OnboardingViewPart1()
        }
        
    }
}


struct SignInView_Previews: PreviewProvider {
    static var previews: some View {
        SignInView()
    }
}
