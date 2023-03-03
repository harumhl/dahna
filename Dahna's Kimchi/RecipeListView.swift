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
}

struct RecipeListView: View {
    @AppStorage("languages") var lang: String = UserDefaults.standard.string(forKey: "languages") ?? LANGUAGE_DEFAULT
    var body: some View {
        NavigationView {
            List(Array(RECIPES.elements), id: \.key) { key, value in
                NavigationLink(destination: RecipeContentView(recipe: value[lang] ?? Recipe(title: "", ingredients: [], content: ""))) {
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
