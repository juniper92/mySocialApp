//
//  TermsAndConditionsView.swift
//  BreakUpTouch
//
//  Created by HI on 2021/10/05.
//

import SwiftUI

struct TermsAndConditionsView: View {
    var body: some View {
        
        VStack {
            
            Text("이용약관")
                .frame(maxWidth: .infinity)
                .foregroundColor(Color.MyColorTheme.orangeColor)
                .font(.title3.bold())
                .padding(.top, 25)
                .padding()
            
            ScrollView {
                VStack {
                    TermsAndConditions()
                        .padding()
                }
                .frame(maxWidth: .infinity, maxHeight: .infinity)
                .background(Color.white)
                .padding(.horizontal)
            }
            .padding()

        }
        .background(Color.MyColorTheme.lightgrayColor)
        .edgesIgnoringSafeArea(.all)
        
        
        
    }
}

struct TermsAndConditionsView_Previews: PreviewProvider {
    static var previews: some View {
        TermsAndConditionsView()
    }
}
