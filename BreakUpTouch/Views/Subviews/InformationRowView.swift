//
//  InformationRowView.swift
//  BreakUpTouch
//
//  Created by HI on 2021/09/29.
//

import SwiftUI

struct InformationRowView: View {
    
    var text: String
    
    var body: some View {
        VStack {
            HStack {
                
                Text(text)
                    .font(.callout)
                
                Spacer()
                
            }
            
            Divider()
        }
        .padding(.bottom, 15)
    }
}

struct InformationRowView_Previews: PreviewProvider {
    static var previews: some View {
        InformationRowView(text: "테스트 텍스트")
            .previewLayout(.sizeThatFits)
    }
}
