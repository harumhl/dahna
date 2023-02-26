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
    let content: String
}

struct RecipeListView: View {
    @AppStorage("languageChoice") var lang: String = UserDefaults.standard.string(forKey: "languageChoice") ?? GlobalConstants.languageDefault;
    var body: some View {
        NavigationView {
            List(Array(GlobalConstants.recipes.elements), id: \.key) { key, value in
                NavigationLink(destination: RecipeContentView(recipe: value[lang] ?? Recipe(title: "", content: ""))) {
                    Text(value[lang]?.title ?? "")
                }
            }
            .navigationTitle(GlobalConstants.tabViews["recipes"]?[lang] ?? "")
        }
    }
}

struct RecipeListView_Previews: PreviewProvider {
    static var previews: some View {
        RecipeListView()
    }
}
