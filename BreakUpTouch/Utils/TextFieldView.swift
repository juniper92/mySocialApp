//
//  TextFieldView.swift
//  BreakUpTouch
//
//  Created by HI on 2021/10/07.
//

import SwiftUI

struct TextFieldView: View {
    
    @Binding var text: String
    let placeholder: Text
    let imageName: String
    
    var body: some View {
        
        ZStack(alignment: .leading) {
            if text.isEmpty {
                placeholder
                    .foregroundColor(Color(.init(white: 1, alpha: 0.8)))
                    .padding(.leading, 50)
                    .font(.body.bold())
            }
            
            HStack {
                Image(systemName: imageName)
                    .resizable()
                    .scaledToFit()
                    .frame(width: 20, height: 20)
                    .foregroundColor(.white)
                    .padding(.horizontal)
                
                TextField("", text: $text)
                    .padding(.vertical, 5)
                    
            }
            
        }
    }
}

struct TextFieldView_Previews: PreviewProvider {
    static var previews: some View {
        TextFieldView(text: .constant(""), placeholder: Text("Email"), imageName: "envelope")
            .previewLayout(.sizeThatFits)
            .background(Color.MyColorTheme.orangeColor)
    }
}
