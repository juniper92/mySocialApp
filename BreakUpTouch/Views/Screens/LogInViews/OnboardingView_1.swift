//
//  OnboardingView_1.swift
//  BreakUpTouch
//
//  Created by HI on 2021/10/06.
//

import SwiftUI

struct OnboardingView_1: View {
    
    @State var displayName: String = ""
    
    var body: some View {
        VStack(alignment: .center, spacing: 20) {
            
            Text("닉네임을 입력해주세요")
                .font(.title)
                .fontWeight(.bold)
                .foregroundColor(Color.MyColorTheme.orangeColor)
            
            TextField("사용할 닉네임 입력...", text: $displayName)
                .padding()
                .frame(height: 60)
                .frame(maxWidth: .infinity)
                .background(Color.MyColorTheme.lightgrayColor)
                .cornerRadius(12)
                .font(.headline)
                .autocapitalization(.sentences)
                .padding(.horizontal)
            
            Button {
                
            } label: {
                Text("다음 단계로")
                    .font(.headline)
                    .fontWeight(.bold)
                    .padding()
                    .frame(height: 60)
                    .frame(maxWidth: .infinity)
                    .background(Color.MyColorTheme.orangeColor)
                    .cornerRadius(12)
                    .padding(.horizontal)
            }
            .accentColor(Color.white)
            .opacity(displayName != "" ? 1.0 : 0.0)
            .animation(.easeIn(duration: 1.0))

        }
        .frame(maxWidth: .infinity, maxHeight: .infinity)
        .background(Color.MyColorTheme.grayColor)
        .edgesIgnoringSafeArea(.all)
    }
}

struct OnboardingView_1_Previews: PreviewProvider {
    static var previews: some View {
        OnboardingView_1()
    }
}
