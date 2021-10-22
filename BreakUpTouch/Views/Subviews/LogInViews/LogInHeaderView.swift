//
//  LogInHeaderView.swift
//  BreakUpTouch
//
//  Created by HI on 2021/10/09.
//

import SwiftUI

struct LogInHeaderView: View {
    var body: some View {
        
        VStack {
            
            Spacer()
            Spacer()
            
            Image("logo.transparent")
                .resizable()
                .scaledToFit()
                .frame(width: 90, height: 90, alignment: .center)
            
            Spacer()
        }
        .frame(maxHeight: .infinity)
        .padding()
        .padding(.bottom)
    }
    
}

struct LogInHeaderView_Previews: PreviewProvider {
    static var previews: some View {
        LogInHeaderView()
            .previewLayout(.sizeThatFits)
            .background(Color.MyColorTheme.orangeColor)
    }
}
