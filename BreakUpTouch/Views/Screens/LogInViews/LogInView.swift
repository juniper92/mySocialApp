//
//  LogInView.swift
//  BreakUpTouch
//
//  Created by HI on 2021/10/07.
//

import SwiftUI

struct LogInView: View {
    
    //    @State private var email: String = ""
    //    @State var password: String = ""
    
    
    var body: some View {
        
        
        VStack(spacing: -30) {
            
            LogInHeaderView()
            
            LogInFieldView()
            
            AppleLogInView()
            
        }
        .frame(maxWidth: .infinity, maxHeight: .infinity)
        .background(Color.MyColorTheme.orangeColor)
        .edgesIgnoringSafeArea(.all)
    }
}

struct LogInView_Previews: PreviewProvider {
    static var previews: some View {
        LogInView()
    }
}
