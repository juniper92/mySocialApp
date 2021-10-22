//
//  MainHomeView.swift
//  BreakUpTouch
//
//  Created by HI on 2021/10/05.
//

import SwiftUI

struct MainHomeView: View {
    
    var title: String 
    
    var body: some View {
        
        ScrollView {
            VStack(spacing: 10) {
                
                // 헤더 이미지
                Image("home.top")
                    .resizable()
                    .scaledToFit()
                    .overlay(
                        VStack {
                            HStack {
                                Spacer()
                                
                                Image(systemName: "bell")
                                    .foregroundColor(.white)
                                    .font(.title2.bold())
                                    .padding([.top, .trailing])
                            }
                            
                            Spacer()
                            
                            Text("KOBOTIS님")
                                .foregroundColor(.white)
                                .font(.title3.bold())
                                .padding()
                                .padding(.bottom, 40)
                            
                            Spacer()
                        })
                    .frame(maxWidth: .infinity, maxHeight: .infinity)
                
                
                VStack {
                    //MARK: - 내 미션
                    VStack {
                        
                        HStack {
                            Text("내 미션")
                                .font(.title2.bold())
                                .foregroundColor(Color.MyColorTheme.fontNavyColor)
                                .padding(.leading)
                            
                            Spacer()
                        }
                        
                        
                        NavigationLink {
                            MissionView()
                        } label: {
                            Image("home.mission")
                                .resizable()
                                .scaledToFit()
                                .overlay(
                                    VStack {
                                        HStack {
                                            VStack(alignment: .leading, spacing: 3) {
                                                Text(" 나를 위해")
                                                    .font(.subheadline.bold())
                                                Text("오늘은 뭐하지?")
                                                    .font(.title2.bold())
                                                
                                            }
                                            .padding()
                                            
                                            Spacer()
                                            
                                            Image(systemName: "chevron.right")
                                                .font(.title)
                                                .padding()
                                            
                                        }
                                        .foregroundColor(Color.MyColorTheme.fontNavyColor)
                                        
                                        Spacer()
                                    }
                                        .padding(.horizontal, 4)
                                )
                        }

                    }
                    .padding()
                    
                    
                    //MARK: - 내 서랍
                    VStack {
                        
                        HStack {
                            Text("내 서랍")
                                .font(.title2.bold())
                                .foregroundColor(Color.MyColorTheme.fontNavyColor)
                                .padding(.leading)
                            
                            Spacer()
                        }
                        
                        NavigationLink {
                            CalendarView()
                        } label: {
                            Image("home.calendar")
                                .resizable()
                                .scaledToFit()
                                .overlay(
                                    HStack {
                                        Spacer()
                                        
                                        Text("터치 캘린더")
                                            .font(.title2.bold())
                                            .padding(.leading, -25)
                                        
                                        Spacer()
                                        
                                        Image(systemName: "chevron.right")
                                            .font(.title)
                                            .padding()
                                    }
                                        .foregroundColor(Color.white)
                                )
                        }
                    }
                    .padding()
                }
                
            }
        }
        .navigationBarHidden(true)
        .navigationTitle(title)
    }
}

struct MainHomeView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationView {
            MainHomeView(title: "메인페이지")
        }
    }
}
