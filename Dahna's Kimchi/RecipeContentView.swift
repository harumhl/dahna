//
//  RecipeContentView.swift
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
    @AppStorage("languages") var lang = getSelection(key: "languages")
    @AppStorage("units") var unit = getSelection(key: "units") // TODO String -> Dimension
    let recipe: Recipe

    var body: some View {
        // TODO some logic can be outside of View components! Move logic into logic files
        List{
            Section(header: Text(RECIPE_TERMS["Ingredients"]?[lang] ?? "")) {
                ForEach(recipe.ingredients) { ingredient in
                    Text("\(ingredient.name): \(String(format: "%.2f", ingredient.amount)) \(ingredient.unit)") // TODO unit conversion
                }
            }
            Section(header: Text(RECIPE_TERMS["Recipe"]?[lang] ?? "")) {
                ForEach(recipe.steps) { step in
                    Text("\(step.instruction)")
                    Image("KimchiFriedRice_")
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .padding()
                }
            }
        }
            .navigationTitle(recipe.title)
    }
}

struct RecipeContentView_Previews: PreviewProvider {
    static var previews: some View {
        RecipeContentView(recipe: Recipe(
            title: "Title",
            ingredients: [],
            content: "Content",
            steps: []
        ))
    }
}
