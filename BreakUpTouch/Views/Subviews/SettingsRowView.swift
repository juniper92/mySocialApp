//
//  SettingsRowView.swift
//  BreakUpTouch
//
//  Created by HI on 2021/09/29.
//

import SwiftUI

struct SettingsRowView: View {
    
    var leftIcon: String
    var text: String
    var color: Color
    
    var body: some View {
        VStack {
            HStack {
                
                ZStack {
                    
                    RoundedRectangle(cornerRadius: 8, style: .continuous)
                        .fill(color)
                    
                    Image(systemName: leftIcon)
                        .font(.title3)
                        .foregroundColor(.white)
                }
                .frame(width: 36, height: 36, alignment: .center)
                
                Text(text)
                    .foregroundColor(.primary)
                
                Spacer()
                
                Image(systemName: "chevron.right")
                    .font(.headline)
                    .foregroundColor(Color.MyColorTheme.orangeColor)
            }
//            .padding(.vertical, 4)
            
            Divider()
        }
    }
}

struct SettingsRowView_Previews: PreviewProvider {
    static var previews: some View {
        SettingsRowView(leftIcon: "heart.fill", text: "Row Title", color: .red)
            .previewLayout(.sizeThatFits)
    }
}
