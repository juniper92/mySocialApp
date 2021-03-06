//
//  OnboardingScreen.swift
//  BreakUpTouch
//
//  Created by HI on 2021/10/23.
//

import SwiftUI

struct OnboardingScreen: View {
    
    @AppStorage("currentPage") var currentPage = 1
    
    var body: some View {
        
        VStack(spacing: 10) {
            
            ZStack {
                if currentPage == 1 {
                    OnboardingViewPart1()
                        .transition(.opacity)
                    
                }
                
                if currentPage == 2 {
                    OnboardingViewPart2()
                        .transition(.opacity)
                }
            }
            .padding(.top, 50)
//            .edgesIgnoringSafeArea(.all)
            
            
            HStack {
                
                Image(currentPage == 1 ? "Onboardingheart.half" : "Onboardingheart.fill")
                
                Spacer()
                
                Button(action: {
                    // 뷰 전환
                    withAnimation(.easeInOut) {
                        
                        // 체크
                        if currentPage <= totalPages {
                            currentPage += 1
                        } else {
                            currentPage = 1
                        }
                    }
                }, label: {
                    
                    HStack {
                        
                        
                        Image(systemName: "arrow.right")
                            .font(.callout.bold())
                            .foregroundColor(Color.MyColorTheme.orangeColor)
                            .clipShape(Circle())
                            .overlay(
                                ZStack {
                                    Circle()
                                        .stroke(Color.MyColorTheme.lightgrayColor, lineWidth: 4)
                                    
                                    Circle()
                                        .trim(from: 0, to: CGFloat(currentPage) / CGFloat(totalPages))
                                        .stroke(Color.MyColorTheme.orangeColor, lineWidth: 4)
                                        .rotationEffect(.init(degrees: -90))
                                }
                                    .padding(-10)
                                
                            )
                            .padding(.trailing)
                    }
                    
                })

            }
            .padding()
            .padding(.horizontal)
            .padding(.bottom)
            
        }
        .frame(maxWidth: .infinity, maxHeight: .infinity)
        .edgesIgnoringSafeArea(.all)
        
        
        
        
    }
}

struct OnboardingScreen_Previews: PreviewProvider {
    static var previews: some View {
        OnboardingScreen()
    }
}
