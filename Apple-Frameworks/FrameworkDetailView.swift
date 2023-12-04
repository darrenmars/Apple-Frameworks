//
//  FrameworkDetailView.swift
//  Apple-Frameworks
//
//  Created by Darren Mariadas on 4/12/2023.
//

import SwiftUI

struct FrameworkDetailView: View {
    var framework: Framework
    @Binding var isShowingDetail: Bool
    var body: some View {
        VStack {
            HStack {
                
                Spacer()
                
                Button(action: {
                    isShowingDetail = false
                }, label: {
                    Image(systemName: "xmark")
                        .foregroundColor(.primary)
                        .imageScale(.large)
                        .frame(width: 44, height: 44)
                })
            }
            .padding()
            
            Spacer()
            
            FrameworkTitleView(framework: framework)
            
            Text(framework.description)
                .font(.body)
                .padding()
            
            Spacer()
            
            Button(action: {
            }, label: {
                AFButton(title: "Learn More")
            })
        }
    }
}


#Preview {
    FrameworkDetailView(framework: MockData.sampleFramework, isShowingDetail: .constant(false))
}
