//
//  CardView.swift
//  Hike
//
//  Created by Junichi Machii on 2023/08/29.
//

import SwiftUI

struct CardView: View {
    var body: some View {
        ZStack {
            Circle()
                .fill(
                 LinearGradient(
                    colors:[
                      Color("ColorIndigoMedium"),
                      Color("ColorSalmonLight")
                    ],
                    startPoint: .topLeading,
                    endPoint: .bottomTrailing
                 )
                )
                .frame(width: 256,height: 256)
            Image("image-1")
                .resizable()
            .scaledToFit()
        }
    }
}

struct CardView_Previews: PreviewProvider {
    static var previews: some View {
        CardView()
    }
}
