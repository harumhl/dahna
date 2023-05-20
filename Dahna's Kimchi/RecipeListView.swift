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
    let ingredients: [Ingredient]
    let content: String
    let steps: [RecipeStep]
}

struct RecipeStep : Identifiable {
    var id = UUID()
    let instruction: String
    let photoId: String
}

struct RecipeListView: View {
    @AppStorage("languages") var lang = getSelection(key: "languages")
    
    var body: some View {
        NavigationView {
            List(Array(RECIPES.elements), id: \.key) { key, value in
                NavigationLink(destination: RecipeContentView(recipe: value[lang] ?? Recipe(title: "", ingredients: [], content: "", steps: []))) {
                    Text(value[lang]?.title ?? "")
                }
            }
            .navigationTitle(TAB_VIEWS["recipes"]?[lang] ?? "")
        }
    }
}

struct RecipeListView_Previews: PreviewProvider {
    static var previews: some View {
        RecipeListView()
    }
}
