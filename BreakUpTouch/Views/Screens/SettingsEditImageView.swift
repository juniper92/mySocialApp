//
//  SettingsEditImageView.swift
//  BreakUpTouch
//
//  Created by HI on 2021/09/30.
//

import SwiftUI
import UIKit

struct SettingsEditImageView: View {
        
    @State var title: String
    @State var description: String
    @State var selectedImage: UIImage   // 화면에서 보여지는 이미지
    @State var sourceType: UIImagePickerController.SourceType = UIImagePickerController.SourceType.photoLibrary
    
    @State var showImagePicker: Bool = false
    
    var body: some View {
        VStack(spacing: 15) {
            
            HStack {
                Text(description)
                Spacer(minLength: 0)
            }
            
            Divider().padding(.bottom, 10)
            
            Image(uiImage: selectedImage)
                .resizable()
                .scaledToFill()
                .frame(width: 220, height: 220, alignment: .center)
                .clipShape(Circle())
            
            Button {
                showImagePicker.toggle()
            } label: {
                Text("불러오기")
                    .font(.title3)
                    .fontWeight(.bold)
                    .padding()
                    .frame(height: 60)
                    .frame(maxWidth: .infinity)
                    .background(Color.MyColorTheme.grayColor)
                    .cornerRadius(12)
            }
            .accentColor(Color.MyColorTheme.orangeColor)
            .sheet(isPresented: $showImagePicker) {
                ImagePicker(imageSelected: $selectedImage, sourceType: $sourceType)
            }


            
            Button {
                
            } label: {
                Text("저장하기")
                    .font(.title3)
                    .fontWeight(.bold)
                    .padding()
                    .frame(height: 60)
                    .frame(maxWidth: .infinity)
                    .background(Color.MyColorTheme.orangeColor)
                    .cornerRadius(12)
            }
            .accentColor(Color.white)

            
            Spacer()
            
        }
        .padding()
        .frame(maxWidth: .infinity)
        .navigationBarTitle(title)
    }
}

struct SettingsEditImageView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationView {
            SettingsEditImageView(title: "프로필 사진 변경", description: "내용", selectedImage: UIImage(named: "testimage5")!)
        }
    }
}
