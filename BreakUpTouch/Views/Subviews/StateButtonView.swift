//
//  StateButtonView.swift
//  BreakUpTouch
//
//  Created by HI on 2021/10/15.
//

import SwiftUI

struct StateButtonView: View {
    
    @State private var clickedButtonFirst: Bool = false
    @State private var clickedButtonSecond: Bool = false
    @State private var clickedButtonThird: Bool = false
        
    var body: some View {
        
        HStack {
            
            //MARK: - 성격차이
            Button {
                clickedButtonFirst.toggle()
            } label: {
                Text("성격차이")
                    .frame(minWidth: 25, maxWidth: 60, minHeight: 25, maxHeight: 60)
                    .font(.headline)
                    .padding()
                    .foregroundColor(firstButtonColor)
                    .overlay(
                        RoundedRectangle(cornerRadius: 20)
                            .stroke(firstButtonColor))
            }
            .disabled(clickedButtonSecond)
            .disabled(clickedButtonThird)
            
            
            //MARK: - 바람
            Button {
                clickedButtonSecond.toggle()
            } label: {
                Text("바람")
                    .frame(minWidth: 25, maxWidth: 60, minHeight: 25, maxHeight: 60)
                    .font(.headline)
                    .padding()
                    .foregroundColor(secondButtonColor)
                    .overlay(
                        RoundedRectangle(cornerRadius: 20)
                            .stroke(secondButtonColor))
            }
            .disabled(clickedButtonFirst)
            .disabled(clickedButtonThird)

            
            
            //MARK: - 기타
            Button {
                clickedButtonThird.toggle()
            } label: {
                Text("기타")
                    .frame(minWidth: 25, maxWidth: 60, minHeight: 25, maxHeight: 60)
                    .font(.headline)
                    .padding()
                    .foregroundColor(thirdButtonColor)
                    .overlay(
                        RoundedRectangle(cornerRadius: 20)
                            .stroke(thirdButtonColor))
            }
            .disabled(clickedButtonSecond)
            .disabled(clickedButtonFirst)

        }
        
    }
    
    
    
    //MARK: - 색상변수
    var firstButtonColor: Color {
        return clickedButtonFirst != false ? Color.MyColorTheme.orangeColor : Color.MyColorTheme.fontLightgrayColor
    }
    
    var secondButtonColor: Color {
        return clickedButtonSecond != false ? Color.MyColorTheme.orangeColor : Color.MyColorTheme.fontLightgrayColor
    }
    
    var thirdButtonColor: Color {
        return clickedButtonThird != false ? Color.MyColorTheme.orangeColor : Color.MyColorTheme.fontLightgrayColor
    }
}

struct StateButtonView_Previews: PreviewProvider {
    static var previews: some View {
        StateButtonView()
            .previewLayout(.sizeThatFits)
    }
}
