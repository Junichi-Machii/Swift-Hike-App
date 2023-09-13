//
//  CardView.swift
//  Hike
//
//  Created by Junichi Machii on 2023/08/29.
//

import SwiftUI

struct CardView: View {
    // MARK: - Properties
    @State private var imageNumber: Int = 1
    @State private var randomNumber: Int = 1
    
    //MARK: - Functions
    func randomImage() {
        print("----button was pressed ----")
        print("status: old image number = \(imageNumber)")
        repeat {
            randomNumber = Int.random(in: 1...5)
            print("action: random number generated = \(randomNumber)")
        }while randomNumber == imageNumber
        imageNumber = randomNumber
        
        print("result: new image number = \(imageNumber)")
        print("---END---")
        print("\n")
    }
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
                    Image("image-\(imageNumber)")
                        .resizable()
                        .scaledToFit()
                        .animation(.default, value: imageNumber)
                }
                Button {
                    randomImage()
                }label: {
                    Text("Explore More")
                        .font(.title2)
                        .fontWeight(.heavy)
                        .foregroundStyle(
                            LinearGradient(
                                colors:[
                                    .customGreenLight,
                                    .customGreenMedium
                                ],
                                startPoint: .top,
                                endPoint: .bottom
                            )
                        )
                        .shadow(color: .black.opacity(0.25),
                                radius: 0.25,x: 1,y: 2)
                }
                .buttonStyle(GradientButton())
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
