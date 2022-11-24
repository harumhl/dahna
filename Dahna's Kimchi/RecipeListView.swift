//
//  ContentView.swift
//  Dhana's Kimchi
//
//  Created by Haru Lee on 11/24/22.
//

import SwiftUI

let recipes: [Recipe] = [
    Recipe( title: "김치볶음밥",
            content: "재료는 김치, 밥, 고기"),
    Recipe( title: "감치부침개",
            content: "재료는 김치, 부침가루" ),
    Recipe( title: "김치찌게",
            content: "재료는 김치, 물, 고기" )
]

struct Recipe : Identifiable {
    let id = UUID()
    let title: String
    let content: String
}

struct RecipeListView: View {
    var body: some View {
        NavigationView {
            List(recipes) { recipe in
                NavigationLink(destination: RecipeContentView(recipe: recipe)) {
                    Text(recipe.title)
                }
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
