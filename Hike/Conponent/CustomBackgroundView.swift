//
//  CustomBackgroundView.swift
//  Hike
//
//  Created by Junichi Machii on 2023/08/29.
//

import SwiftUI

struct CustomBackgroundView: View {
    var body: some View {
        ZStack {
            
            Color.customGreenDark
                .cornerRadius(40)
                .offset(y: 12)
            Color.customGreenLight
                .cornerRadius(40)
                .offset(y:3)
                .opacity(0.85)
            
            LinearGradient(colors:[
                Color.customGreenLight,
                Color.customGreenMedium],
                           startPoint: .topTrailing,
                           endPoint: .bottomLeading
            )
            .cornerRadius(40)
        }
        
    }
}

struct CustomBackgroundView_Previews: PreviewProvider {
    static var previews: some View {
        CustomBackgroundView()
            .padding()
    }
}
