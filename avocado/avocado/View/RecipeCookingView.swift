//
//  RecipeCookingView.swift
//  avocado
//
//  Created by Miguel Bosch Cortés on 26/09/2023.
//

import SwiftUI

struct RecipeCookingView: View {
    
    // MARK: - Propierties
    
    var recipe: Recipe
    
    var body: some View {
        
        HStack(alignment: .center, spacing: 12) {
            
            HStack(alignment: .center, spacing: 2) {
                Image(systemName: "person.2")
                Text("Serves: \(recipe.serves)")
            }
            
            HStack(alignment: .center, spacing: 2) {
                Image(systemName: "clock")
                Text("Prep: \(recipe.preparation)")
            }
            
            HStack(alignment: .center, spacing: 2) {
                Image(systemName: "flame")
                Text("Cooking: \(recipe.cooking)")
            }
        }
        .font(.footnote)
        .foregroundColor(.gray)
        
    }
}

struct RecipeCookingView_Previews: PreviewProvider {
    static var previews: some View {
        RecipeCookingView(recipe: recipesData[1])
    }
}
