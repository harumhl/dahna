//
//  MenuView.swift
//  Dahna's Kimchi
//
//  Created by Haru Lee on 4/20/23.
//

import SwiftUI

struct MenuPhotosView: View { // TODO consolidate?
    @AppStorage("languages") var lang: String = UserDefaults.standard.string(forKey: "languages") ?? LANGUAGE_DEFAULT
    var body: some View {
        NavigationView {
            List(Array(RECIPES.elements), id: \.key) { key, value in
                NavigationLink(destination: RecipeContentView(recipe: value[lang] ?? Recipe(title: "", ingredients: [], content: "")), label: {
                    VStack { // VStack puts Image below Text
                        Text(value[lang]?.title ?? "")
                        Image("KimchiFriedRice") // TODO replace the str with `key`
                            .renderingMode(.original)
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                            .padding()
                    }
                })
            }
            .navigationTitle(TAB_VIEWS["recipes"]?[lang] ?? "")
        }
    }
}

struct MenuView: View {
    var body: some View {
        ScrollView {
            MenuPhotosView()
        }
    }
}

struct MenuView_Previews: PreviewProvider {
    static var previews: some View {
        MenuView()
    }
}
