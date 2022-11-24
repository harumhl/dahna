//
//  ContentView.swift
//  Dhana's Kimchi
//
//  Created by Haru Lee on 11/24/22.
//

import SwiftUI

struct Recipe : Identifiable {
   let id = UUID()
   let title: String
}

struct RecipeListView: View {
    let recipes: [Recipe] = [
        Recipe( title: "김치볶음밥" ),
        Recipe( title: "감치부침개" ),
        Recipe( title: "김치찌게" )
    ]
    var body: some View {
        NavigationView {
            List(recipes) { recipe in
                Text(recipe.title)
            }
            .navigationTitle("Recipe")
        }
    }
}

struct RecipeListView_Previews: PreviewProvider {
    static var previews: some View {
        RecipeListView()
    }
}
