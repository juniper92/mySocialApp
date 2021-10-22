//
//  SearchBarView.swift
//  BreakUpTouch
//
//  Created by HI on 2021/10/01.
//

import SwiftUI

struct SearchBarView: View {
    
    @Binding var text: String
    
    var body: some View {
        HStack{
            
            TextField("검색할 내용을 입력하세요...", text: $text)
                .padding(14)
                .padding(.horizontal, 30)
                .background(Color.MyColorTheme.lightgrayColor)
                .cornerRadius(10)
                .overlay(
                    HStack {
                        Image(systemName: "magnifyingglass")
                            .foregroundColor(Color.MyColorTheme.orangeColor)
                            .frame(minWidth: 0, maxWidth: .infinity, alignment: .leading)
                            .padding(.leading, 15)
                    }
                )
        }
    }
    
    struct SearchBarView_Previews: PreviewProvider {
        static var previews: some View {
            // 문자열 형식의 @Binding 속성이 있는 경우, 해당 유형의 이름이 아닌 Binding<String>인스턴스를 전달해야 함.
            SearchBarView(text: .constant("검색할 내용 입력..."))
                .previewLayout(.sizeThatFits)
        }
    }
}
