//
//  RecipeCardView.swift
//  avocado
//
//  Created by Miguel Bosch Cortés on 20/09/2023.
//

import SwiftUI

struct RecipeCardView: View {
    
    // MARK: - PROPERTIES
    var recipe: Recipe
    
    var body: some View {
        VStack(alignment: .leading, spacing: .zero) {
            Image(recipe.image)
                .resizable()
                .scaledToFit()
                .overlay(
                    HStack {
                        
                        Spacer()
                        
                        VStack {
                            Image(systemName: "bookmark")
                                .font(.title.weight(.light))
                                .foregroundColor(.white)
                                .imageScale(.small)
                                .shadow(
                                    color: Color("ColorBlackTranparentBlack"),
                                    radius: 2,
                                    x: .zero,
                                    y: .zero
                                )
                                .padding(.trailing,20)
                                .padding(.top, 22)
                            
                            Spacer()
                        }
                    }
                )
            
            
            VStack(alignment: .leading, spacing: 12) {
                
                Text(recipe.title)
                    .font(.system(.title, design: .serif))
                    .fontWeight(.bold)
                    .foregroundColor(Color("ColorGreenMedium"))
                    .lineLimit(1)
                
                Text(recipe.headline)
                    .font(.system(.body, design: .serif))
                    .foregroundColor(.gray)
                    .italic()
                
                RecipeRatingView(recipe: recipe)
                
                RecipeCookingView(recipe: recipe)
                
            }
            .padding()
            .padding(.bottom, 12)
        }
        .background(.white)
        .cornerRadius(12)
        .shadow(
            color: Color("ColorBlackTransparentLight"),
            radius: 8,
            x: .zero,
            y: .zero
        )
    }
}

struct RecipeCardView_Previews: PreviewProvider {
    static var previews: some View {
        RecipeCardView(recipe: recipesData[0])
            .previewLayout(.sizeThatFits)
    }
}
