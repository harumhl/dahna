//
//  RecipeContentView.swift
//  Dhana's Kimchi
//
//  Created by Haru Lee on 11/24/22.
//

import SwiftUI

struct RecipeContentView: View {
    let recipe: Recipe

    var body: some View {
        NavigationView {
            Text(recipe.content)
                .navigationTitle(recipe.title)
        }
    }
}

struct RecipeContentView_Previews: PreviewProvider {
    static var previews: some View {
        RecipeContentView(recipe: Recipe(title: "Title", content: "Content"))
    }
}
