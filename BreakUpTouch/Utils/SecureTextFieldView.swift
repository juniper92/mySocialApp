//
//  SecureTextFieldView.swift
//  BreakUpTouch
//
//  Created by HI on 2021/10/07.
//

import SwiftUI

struct SecureTextFieldView: View {
    
    @Binding var text: String
    let placeholder: Text
    
    var body: some View {
        
        ZStack(alignment: .leading) {
            if text.isEmpty {
                placeholder
                    .foregroundColor(Color(.init(white: 1, alpha: 0.8)))
                    .padding(.leading, 50)
                    .font(.body.bold())
            }
            
            HStack {
                Image(systemName: "lock.circle")
                    .resizable()
                    .scaledToFit()
                    .frame(width: 20, height: 20)
                    .foregroundColor(.white)
                    .padding(.horizontal)
                
                SecureField("", text: $text)
                    .padding(.vertical, 5)
                    
            }
            
        }
    }
}

struct SecureTextFieldView_Previews: PreviewProvider {
    static var previews: some View {
        SecureTextFieldView(text: .constant(""), placeholder: Text("Password"))
            .previewLayout(.sizeThatFits)
            .background(Color.MyColorTheme.orangeColor)
    }
}
