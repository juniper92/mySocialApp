//
//  OnboardingViewPart2.swift
//  BreakUpTouch
//
//  Created by HI on 2021/10/14.
//

import SwiftUI

struct OnboardingViewPart2: View {
    
    // 아직 미사용...
    @State var stateToggled: Bool = false
    
    @State var selectedStateBefore : UserModel.UserStateBefore = before.first!
    @State var selectedStateAfter : UserModel.UserStateAfter = after.first!
    @State var selectedStateAnger : UserModel.UserStateAnger = anger.first!
    
    var body: some View {
        
        ScrollView {
            HStack {
                
                VStack(alignment: .center, spacing: 40) {
                    
                    Text("현재 어떤 상태인가요?")
                        .font(.largeTitle)
                        .foregroundColor(Color.MyColorTheme.fontDarkgrayColor)
                        .padding(.top)
                        .padding(.bottom)
                    
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
                        
                        LazyVGrid(
                            columns: [
                                GridItem(.flexible()),
                                GridItem(.flexible()),
                                GridItem(.flexible())
                            ],
                            alignment: .center,
                            spacing: nil,
                            pinnedViews: []) {
                                
                                ForEach(before) { before in
                                    
                                    HStack(spacing: 5) {
                                        Text(before.title)
                                            .fontWeight(.bold)
                                            .foregroundColor(selectedStateBefore.id == before.id ? Color.MyColorTheme.orangeColor : Color.MyColorTheme.fontLightgrayColor)
                                            .frame(width: getWidth(), height: getWidth())
                                            .overlay(
                                                RoundedRectangle(cornerRadius: 12)
                                                    .stroke(selectedStateBefore.id == before.id ? Color.MyColorTheme.orangeColor : Color.MyColorTheme.fontLightgrayColor)
                                            )
                                            .onTapGesture {
                                                withAnimation(.spring()) {
                                                    
                                                    selectedStateBefore = before
                                                }
                                            }
                                    }
                                }
                            }
                        
                        
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
                        
                        LazyVGrid(
                            columns: [
                                GridItem(.flexible()),
                                GridItem(.flexible()),
                                GridItem(.flexible())
                            ],
                            alignment: .center,
                            spacing: nil,
                            pinnedViews: []) {
                                
                                ForEach(after) { after in
                                    
                                    HStack(spacing: 5) {
                                        Text(after.title)
                                            .fontWeight(.bold).foregroundColor(selectedStateAfter.id == after.id ? Color.MyColorTheme.orangeColor : Color.MyColorTheme.fontLightgrayColor)
                                            .frame(width: getWidth(), height: getWidth())
                                            .overlay(
                                                RoundedRectangle(cornerRadius: 12)
                                                    .stroke(selectedStateAfter.id == after.id ? Color.MyColorTheme.orangeColor : Color.MyColorTheme.fontLightgrayColor)
                                            )
                                            .onTapGesture {
                                                withAnimation(.spring()) {
                                                    selectedStateAfter = after
                                                }
                                            }
                                    }
                                }
                            }
                        
                        
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
                        
                        LazyVGrid(
                            columns: [
                                GridItem(.flexible()),
                                GridItem(.flexible()),
                                GridItem(.flexible())
                            ],
                            alignment: .center,
                            spacing: nil,
                            pinnedViews: []) {
                                
                                ForEach(anger) { anger in
                                    
                                    HStack {
                                        Text(anger.title)
                                            .fontWeight(.bold).foregroundColor(selectedStateAnger.id == anger.id ? Color.MyColorTheme.orangeColor : Color.MyColorTheme.fontLightgrayColor)
                                            .frame(width: getWidth(), height: getWidth())
                                            .overlay(
                                                RoundedRectangle(cornerRadius: 12)
                                                    .stroke(selectedStateAnger.id == anger.id ? Color.MyColorTheme.orangeColor : Color.MyColorTheme.fontLightgrayColor)
                                            )
                                            .onTapGesture {
                                                withAnimation(.spring()) {
                                                    selectedStateAnger = anger
                                                }
                                            }
                                    }
                                }
                            }
                        
                    }
                    .padding(.leading)
                }
                .padding(.trailing)
                
                
            }
            .frame(maxWidth: .infinity, maxHeight: .infinity)
            .background(Color.white)
            .padding()
            .padding(.top)
            .edgesIgnoringSafeArea(.all)
        }
//        .edgesIgnoringSafeArea(.all)
        
        
        
    }
    
    func getWidth() -> CGFloat {
        
        // Horizontal padding = 30
        // Spacing = 30
        let width = UIScreen.main.bounds.width - (30 + 50)
        
        return width / 3
    }
    
    
}

struct OnboardingViewPart2_Previews: PreviewProvider {
    static var previews: some View {
        OnboardingViewPart2()
    }
}
