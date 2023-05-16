//
//  RecipeContentView.swift
//  Dhana's Kimchi
//
//  Created by Haru Lee on 11/24/22.
//

import SwiftUI

struct Ingredient : Identifiable {
    let id = UUID()
    let name: String
    let amount: Double // TODO double or int?
    let unit: String
}

struct RecipeContentView: View {
    @AppStorage("languages") var lang: String = UserDefaults.standard.string(forKey: "languages") ?? LANGUAGE_DEFAULT
    let recipe: Recipe

    var body: some View {
        Text(RECIPE_TERMS["Ingredients"]?[lang] ?? "")
        List(recipe.ingredients) { ingredient in
            Text("\(ingredient.name): \(String(format: "%.2f", ingredient.amount)) \(ingredient.unit)") // TODO unit conversion
        }
        Text(RECIPE_TERMS["Recipe"]?[lang] ?? "")
        Text(recipe.content)
            .navigationTitle(recipe.title)
    }
}

struct RecipeContentView_Previews: PreviewProvider {
    static var previews: some View {
        RecipeContentView(recipe: Recipe(
            title: "Title",
            ingredients: [],
            content: "Content"))
    }
}
