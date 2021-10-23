//
//  OnboardingViewPart2.swift
//  BreakUpTouch
//
//  Created by HI on 2021/10/14.
//

import SwiftUI

struct OnboardingViewPart2: View {
    
    @State private var isEnabled: Bool = false
    
    @State var showOnboardingPart3: Bool = false
    
    //    //1018 add
    //    @State private var isPresented: Bool = false
    
    var body: some View {
        
        HStack {
            
            VStack(alignment: .center, spacing: 40) {
                
                Text("현재 어떤 상태인가요?")
                    .font(.largeTitle)
                    .foregroundColor(Color.MyColorTheme.fontDarkgrayColor)
                
                //MARK: - 이별 전
                VStack(alignment: .leading) {
                    
                    HStack {
                        Text("이별 전")
                            .font(.title2.bold())
                            .foregroundColor(Color.MyColorTheme.fontDarkgrayColor)
                        
                        Image("Imozi.soso")
                            .resizable()
                            .scaledToFit()
                            .frame(width: 20, height: 20, alignment: .center)
                    }
                    
                    StateButtonView()
                }
                .padding(.leading)
                
                
                //MARK: - 이별 후 슬픔
                VStack(alignment: .leading) {
                    
                    HStack {
                        Text("이별 후 슬픔")
                            .font(.title2.bold())
                            .foregroundColor(Color.MyColorTheme.fontDarkgrayColor)
                        
                        Image("Imozi.sad")
                            .resizable()
                            .scaledToFit()
                            .frame(width: 20, height: 20, alignment: .center)
                    }
                    
                    StateButtonView()
                    
                }
                .padding(.leading)
                
                
                //MARK: - 이별 후 분노
                VStack(alignment: .leading) {
                    
                    HStack {
                        Text("이별 후 분노")
                            .font(.title2.bold())
                            .foregroundColor(Color.MyColorTheme.fontDarkgrayColor)
                        
                        Image("Imozi.angry")
                            .resizable()
                            .scaledToFit()
                            .frame(width: 20, height: 20, alignment: .center)
                    }
                    
                    StateButtonView()
                    
                }
                .padding(.leading)
                
                Spacer(minLength: 50)
                                
            }
            .padding(.trailing)
            
            
        }
        .frame(maxWidth: .infinity, maxHeight: .infinity)
        .background(Color.white)
        .edgesIgnoringSafeArea(.all)
        .padding()
        
        
    }
    
}

struct OnboardingViewPart2_Previews: PreviewProvider {
    static var previews: some View {
        OnboardingViewPart2()
    }
}
