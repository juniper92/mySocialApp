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
    @State var selectedGender : UserModel.Gender = genders.first!
        
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
                        ForEach(genders) { genders in
                            
                            HStack {
                                Text(genders.title)
                                    .font(.headline)
                                    .fontWeight(.bold)
                                    .frame(width: getWidth()*1.5, height: getWidth()/2)
                                    .foregroundColor((selectedGender.id == genders.id ? Color.MyColorTheme.orangeColor : Color.MyColorTheme.fontLightgrayColor))
                                    .overlay(
                                        RoundedRectangle(cornerRadius: 12)
                                            .stroke((selectedGender.id == genders.id ? Color.MyColorTheme.orangeColor : Color.MyColorTheme.fontLightgrayColor), lineWidth: 1)
                                )
                            }
                            .onTapGesture {
                                withAnimation(.spring()) {
                                    selectedGender = genders
                                }
                            }
                        }
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
    

    //MARK: - FUNCTIONS
    func getWidth() -> CGFloat {
        
        let width = UIScreen.main.bounds.width - (30 + 50)
        
        return width / 3
    }

    
    
    struct OnboardingViewPart1_Previews: PreviewProvider {
        static var previews: some View {
            OnboardingViewPart1()
        }
    }
}
