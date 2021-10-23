//
//  UploadView.swift
//  BreakUpTouch
//
//  Created by HI on 2021/09/27.
//

import SwiftUI

struct UploadView: View {
    var body: some View {
        VStack {
            ScrollView {
                VStack(alignment: .leading, spacing: 20) {
                    
                    VStack(alignment: .leading) {
                        Image(systemName: "camera.fill")
                            .resizable()
                            .scaledToFit()
                            .frame(width: getWidth() / 2, height: getWidth() / 2)
                            .foregroundColor(Color.MyColorTheme.orangeColor)
                            .overlay(
                                RoundedRectangle(cornerRadius: 4)
                                    .stroke(Color.MyColorTheme.orangeColor, lineWidth: 1.5)
                                    .frame(width: getWidth(), height: getWidth())
                            )
                        .padding()
                        .padding(.top)
//                        .padding(.leading)
                        
                        Image("upload.memo")
                            .resizable()
                            .scaledToFit()
                            .frame(maxWidth: .infinity)
                    }
                    .padding(.leading)
                    
                    
                    
                    HStack {
                        Group {
                            Button {
                                
                            } label: {
                                Text("취소")
                                    .font(.title3)
                                    .fontWeight(.bold)
                                    .padding()
                                    .foregroundColor(Color.white)
                                    .frame(width: 90, height: 50)
                            }
                        }
                        .background(Color.MyColorTheme.orangeColor)
                        .cornerRadius(4)

                        Spacer()
                        
                        Group {
                            Button {
                                
                            } label: {
                                Text("등록")
                                    .font(.title3)
                                    .fontWeight(.bold)
                                    .padding()
                                    .foregroundColor(Color.white)
                                    .frame(width: 90, height: 50)
                            }
                        }
                        .background(Color.MyColorTheme.orangeColor)
                        .cornerRadius(4)
                    }
                    .padding()
    //                .padding(.horizontal)
                }
                .padding()
            }

        }
        .frame(maxWidth: .infinity, maxHeight: .infinity)
        .background(Color.MyColorTheme.lightgrayColor)
        .navigationBarTitle("게시물 작성")
        .navigationBarTitleDisplayMode(.inline)
        .edgesIgnoringSafeArea(.bottom)
    }
    
    
    func getWidth() -> CGFloat {
        // Horizontal padding = 30
        // Spacing = 30
        //        let width = UIScreen.main.bounds.width - (50 + 10)
        let width = UIScreen.main.bounds.width - (30 + 80)
        
        return width / 3
    }
}

struct UploadView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationView {
            UploadView()
        }
    }
}
