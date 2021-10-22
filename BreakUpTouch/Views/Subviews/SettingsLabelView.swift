//
//  SettingsLabelView.swift
//  BreakUpTouch
//
//  Created by HI on 2021/09/28.
//

import SwiftUI

struct SettingsLabelView: View {
    
    var labelText: String
    var labelImage: String
    
    var body: some View {
        VStack {
            HStack {
                
                Text(labelText)
                    .fontWeight(.bold)
                
                Spacer()
                
                Image(systemName: labelImage)
            }
            
            Divider()
                .padding(.vertical, 4)
        }
    }
}

struct SettingsLabelView_Previews: PreviewProvider {
    static var previews: some View {
        SettingsLabelView(labelText: "테스트 항목", labelImage: "person")
            .previewLayout(.sizeThatFits)
    }
}
