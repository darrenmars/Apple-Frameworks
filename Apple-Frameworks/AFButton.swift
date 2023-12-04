//
//  AFButton.swift
//  Apple-Frameworks
//
//  Created by Darren Mariadas on 4/12/2023.
//

import SwiftUI

struct AFButton: View {
    var title: String
    var body: some View {
        Text(title)
            .font(.title2)
            .fontWeight(.semibold)
            .frame(width: 280, height: 50)
            .background(Color.red)
            .foregroundStyle(.white)
            .cornerRadius(10.0)
    }
}

#Preview {
    AFButton(title: "Learn More")
}
