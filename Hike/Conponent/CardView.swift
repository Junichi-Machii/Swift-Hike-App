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
            CustomBackgroundView()
            VStack {
                VStack(alignment:.listRowSeparatorLeading){ HStack {
                    Text("Hiking")
                        .fontWeight(.black)
                        .font(.system(size: 52))
                        .foregroundStyle(
                            LinearGradient(colors: [.customGrayLight, .customGrayMedium], startPoint: .top, endPoint: .bottom))
                    
                    Spacer()
                    
                    Button {
                        // Action: Show a Sheet
                        print("The  button was pressed.")
                    }label: {
                        CustomButtonIView()
                        
                    }
                }
                    Text("Fun and enjoyable outdoor activity for friends and families.")
                        .multilineTextAlignment(.leading)
                        .italic()
                        .foregroundColor(.customGrayMedium)
                }
                .padding(.horizontal,40)
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
        }// CARD
        .frame(width: 320,height: 570)
    }
}

struct CardView_Previews: PreviewProvider {
    static var previews: some View {
        CardView()
    }
}
