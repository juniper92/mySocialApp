//
//  AppleLogInView.swift
//  BreakUpTouch
//
//  Created by HI on 2021/10/09.
//

import SwiftUI

struct AppleLogInView: View {
    var body: some View {
        
        VStack(spacing: 10) {
            Text("Apple 계정으로 로그인")
                .foregroundColor(.white)
                .font(.callout)
            
            Button {
                
            } label: {
                Image("Login.apple")
                    .resizable()
                    .scaledToFit()
                    .frame(width: 60, height: 60, alignment: .center)
            }
        }
        .padding()
        .padding(.bottom, 30)
    }
}

struct AppleLogInView_Previews: PreviewProvider {
    static var previews: some View {
        AppleLogInView()
            .previewLayout(.sizeThatFits)
    }
}
