//
//  DeveloperInformationView.swift
//  BreakUpTouch
//
//  Created by HI on 2021/09/29.
//

import SwiftUI

struct DeveloperInformationView: View {
    
    
    var body: some View {
            ScrollView(.vertical, showsIndicators: false) {
                
                Divider()
                
                GroupBox(label: SettingsLabelView(labelText: "개발자 정보", labelImage: "person.2.fill")) {
                    
                    InformationRowView(text: "상호명 : 코보티스 주식회사")
                    
                    InformationRowView(text: "대표자명 : 송 수 영")
                    
                    InformationRowView(text: "사업자 번호 : 876-81-02137")
                    
                    InformationRowView(text: "판매업 신고번호 : 제 2021-대전유성-1232호")
                    
                    InformationRowView(text: "전화번호 : 042-716-0230")
                    
                    InformationRowView(text: "이메일 : kobotis00@kobotis.com")
                    
                    InformationRowView(text: "주 소 : 대전광역시 유성구 테크노2로 160, 409호")
                    
                }
                .padding()
            }
            .navigationBarTitle("정보")
            .navigationBarTitleDisplayMode(.inline)
    }
    
    struct DeveloperInformationView_Previews: PreviewProvider {
        static var previews: some View {
            DeveloperInformationView()
        }
    }
}
