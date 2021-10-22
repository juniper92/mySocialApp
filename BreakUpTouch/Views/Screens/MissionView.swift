//
//  MissionView.swift
//  BreakUpTouch
//
//  Created by HI on 2021/10/20.
//

import SwiftUI

struct MissionView: View {
    
    //    init() {
    //
    //        //Use this if NavigationBarTitle is with Large Font
    //        UINavigationBar.appearance().largeTitleTextAttributes = [.foregroundColor: UIColor.red]
    //
    //        // Use this if NavigationBarTitle is with displayMode = .inline
    //        UINavigationBar.appearance().titleTextAttributes = [.foregroundColor: UIColor.white]
    //    }
    
    var body: some View {
        
        ScrollView {
            VStack {
                HStack {
                    VStack {
                        Spacer()
                        
                        Text(" 미션")
                            .font(.largeTitle)
                            .fontWeight(.medium)
                            .foregroundColor(Color.MyColorTheme.beigeColor)
                            .padding()
                    }
                    
                    Spacer()
                    
                    
                    Image("mission.image")
                        .resizable()
                        .scaledToFit()
                        .frame(width: 200, height: 150, alignment: .trailing)
                }
                .padding(.top)
                .padding(.bottom, -25)
                .frame(maxWidth: .infinity)
                
                
                VStack(spacing: 20) {
                    
                    ZStack(alignment: .leading) {
                        Image("mission.card")
                            .resizable()
                            .scaledToFit()
                        
                        HStack(spacing: 20) {
                            Text("03")
                                .padding(.leading, 30)
                            
                            Text("동호회, 모임 등에 가입 후 활동해보세요!")
                                .padding(.trailing)
                        }
                        .foregroundColor(Color.MyColorTheme.fontNavyColor)
                        .font(.headline)
                    }
                    
                    ZStack(alignment: .leading) {
                        Image("mission.card")
                            .resizable()
                            .scaledToFit()
                        
                        HStack(spacing: 20) {
                            Text("02")
                                .padding(.leading, 30)
                            
                            Text("가까운 산책로나 공원 등을 산책하며 흥미로운 것을 사진으로 담아보세요!")
                                .padding(.trailing)
                        }
                        .foregroundColor(Color.MyColorTheme.fontNavyColor)
                        .font(.headline)
                    }
                    
                    ZStack(alignment: .leading) {
                        Image("mission.card")
                            .resizable()
                            .scaledToFit()
                        
                        HStack(spacing: 20) {
                            Text("01")
                                .padding(.leading, 30)
                            
                            Text("관심 있던 취미 활동을 직접 해보세요!")
                                .padding(.trailing)
                        }
                        .foregroundColor(Color.MyColorTheme.fontNavyColor)
                        .font(.headline)
                    }
                    
                }
                .padding()
            }
            .padding(.top, 80)
        }
        .navigationTitle("내 미션")
        .navigationBarTitleDisplayMode(.inline)
        .frame(maxWidth: .infinity, maxHeight: .infinity)
        .background(Color.MyColorTheme.fontNavyColor)
        
        
        
    }
}

struct MissionView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationView {
            MissionView()
        }
    }
}
