//
//  AvocadosView.swift
//  avocado
//
//  Created by Miguel Bosch Cortés on 19/09/2023.
//

import SwiftUI

struct AvocadosView: View {
    
    @State private var pulsateAnimation = false
    
    var body: some View {
        VStack {
            Spacer()
            Image("avocado")
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(
                    width: 240,
                    height: 240,
                    alignment: .center
                    )
                .shadow(
                    color: Color("ColorBlackTranparentBlack"),
                    radius: 12,
                    x: 0,
                    y: 8
                )
                .scaleEffect(pulsateAnimation ? 1: 0.9)
                .opacity(pulsateAnimation ? 1 : 0.9)
                .animation(
                    .easeInOut(duration: 1.5).repeatForever(autoreverses: true),
                    value: pulsateAnimation
                )
            
            VStack {
                Text("Avocados".uppercased())
                    .font(
                        .system(
                            size: 42,
                            weight: .bold,
                            design: .serif
                        )
                    )
                    .foregroundColor(.white)
                    .padding()
                    .shadow(
                        color: Color("ColorBlackTranparentBlack"),
                        radius: 4,
                        x: 0,
                        y: 4
                )
                
                Text("""
Creamy, green, and full of nutrients! Avocado is a powerhouse ingredient at any meal. Enjoy these handpicked avocado recipes for breakfast, lunch, dinner & more!
""")
                    .lineLimit(nil)
                    .font(.system(.headline, design: .serif))
                    .foregroundColor(Color("ColorGreenLight"))
                    .multilineTextAlignment(.center)
                    .lineSpacing(8)
                    .frame(maxWidth: 640, minHeight: 120)
            }
            .padding()
            
            
            Spacer()
        }
        .background(
            Image("background")
                .resizable()
                .aspectRatio(contentMode: .fill)
        )
        .edgesIgnoringSafeArea(.all)
        .onAppear {
            pulsateAnimation.toggle()
        }
    }
}

struct AvocadosView_Previews: PreviewProvider {
    static var previews: some View {
        AvocadosView()
        
        AvocadosView()
            .previewDevice("iPhone 11 Pro")
            .environment(\.colorScheme, .dark)
    }
}
