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
    let unit: String // TODO change to Strong | Dimension
}
func convertUnit(fromValue: Double, from: Dimension, to: Dimension) -> Double {
    // e.g. convertUnit(fromValue: 110.0, from: UnitMass.grams, to: UnitMass.ounces);
    let weight: Measurement = Measurement(value: fromValue, unit: from)
    return weight.converted(to: to).value;
}


struct RecipeContentView: View {
    @AppStorage("languages") var lang: String = UserDefaults.standard.string(forKey: "languages") ?? LANGUAGE_DEFAULT
    @AppStorage("units") var unit: String =  UserDefaults.standard.string(forKey: "units") ?? UNIT_DEFAULT // TODO String -> Dimension
    let recipe: Recipe

    var body: some View {
        List{
            Section(header: Text(RECIPE_TERMS["Ingredients"]?[lang] ?? "")) {
                ForEach(recipe.ingredients) { ingredient in
                    Text("\(ingredient.name): \(String(format: "%.2f", ingredient.amount)) \(ingredient.unit)") // TODO unit conversion
                }
            }
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
