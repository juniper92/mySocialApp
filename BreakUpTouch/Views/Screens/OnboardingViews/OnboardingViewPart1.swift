//
//  OnboardingViewPart1.swift
//  BreakUpTouch
//
//  Created by HI on 2021/10/13.
//

import SwiftUI

struct OnboardingViewPart1: View {
    
    @AppStorage("currentPage") var currentPage = 1
    
    @State var displayName: String = ""
    
    @State private var femaleButtonIsEnabled: Bool = false
    @State private var maleButtonIsEnabled: Bool = false
    
    //add
    @State var selection: String = "여성"
    let filterOptions: [String] = [
        "여성", "남성"
    ]
    // add finish
    
    
    @State var showOnboardingPart2: Bool = false
    
    var body: some View {
        
        HStack {
            
            VStack(alignment: .leading, spacing: 40) {
                
                Text("프로필을\n설정해주세요 :)")
                    .font(.largeTitle)
                    .foregroundColor(Color.MyColorTheme.fontDarkgrayColor)
                    .padding(.bottom)
                
                //MARK: - 성별 선택
                VStack(alignment: .leading) {
                    Text("성별")
                        .font(.title2.bold())
                        .foregroundColor(Color.MyColorTheme.fontDarkgrayColor)
                        .padding(.top)
                    
                    HStack {
                        Button {
                            femaleButtonIsEnabled.toggle()
                        } label: {
                            Text(filterOptions[0])
                                .font(.headline)
                                .fontWeight(.bold)
                                .frame(height: 50)
                                .frame(maxWidth: .infinity)
                                .foregroundColor(femaleButtonColor)
                                .background(Color.white)
                                .cornerRadius(12)
                                .overlay(RoundedRectangle(cornerRadius: 8)
                                            .stroke(femaleButtonColor))
                                .padding(.trailing)
                        }
                        .disabled(maleButtonIsEnabled)
                        

                        
                        Button {
                            maleButtonIsEnabled.toggle()
                        } label: {
                            Text(filterOptions[1])
                                .font(.headline)
                                .fontWeight(.bold)
                                .frame(height: 50)
                                .frame(maxWidth: .infinity)
                                .foregroundColor(maleButtonColor)
                                .background(Color.white)
                                .cornerRadius(12)
                                .overlay(RoundedRectangle(cornerRadius: 8)
                                            .stroke(maleButtonColor))
                                .padding(.trailing)
                        }
                        .disabled(femaleButtonIsEnabled)

                        
                    }
                }
                .padding(.trailing)
                
                
                //MARK: - 닉네임 입력
                
                
                VStack(alignment: .leading) {
                    
                    Text("닉네임")
                        .font(.title2.bold())
                        .foregroundColor(Color.MyColorTheme.fontDarkgrayColor)
                        .padding(.top)
                    
                    TextField("닉네임을 입력해주세요...", text: $displayName)
                        .font(.headline.bold())
                        .frame(height: 40)
                        .frame(maxWidth: .infinity)
                        .autocapitalization(.sentences)
                        .padding(.leading, 5)
                        .padding(.trailing)
                    Rectangle()
                        .frame(height: 1)
                        .foregroundColor(Color.MyColorTheme.fontLightgrayColor)
                        .padding(.trailing)
                }
                .padding(.trailing)

            }
            .padding(.leading, 40)
            .padding(.trailing)
            
            
        }
        .frame(maxWidth: .infinity, maxHeight: .infinity)
        .background(Color.white)
        .edgesIgnoringSafeArea(.all)
        
        Spacer(minLength: 50)

    }
    

    //MARK: - 색상변수
    var femaleButtonColor: Color {
        return femaleButtonIsEnabled != false ? Color.MyColorTheme.orangeColor : Color.MyColorTheme.fontLightgrayColor
    }
    
    var maleButtonColor: Color {
        return maleButtonIsEnabled != false ? Color.MyColorTheme.orangeColor : Color.MyColorTheme.fontLightgrayColor
    }
    
    
    
    struct OnboardingViewPart1_Previews: PreviewProvider {
        static var previews: some View {
            OnboardingViewPart1()
        }
    }
}
