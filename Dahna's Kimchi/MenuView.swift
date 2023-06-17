//
//  MenuView.swift
//  Dahna's Kimchi
//
//  Created by Haru Lee on 4/20/23.
//

import SwiftUI

struct MenuPhotosView: View { // TODO consolidate?
    @AppStorage("languages") var lang = getSelection(key: "languages")
    
    var body: some View {
        NavigationView {
            List(Array(RECIPES.elements), id: \.key) { key, value in
                NavigationLink(destination: RecipeContentView(recipe: value[lang] ?? Recipe(title: "", ingredients: [], content: "", steps: [])), label: {
                    VStack { // VStack puts Image below Text
                        Text(value[lang]?.title ?? "")
                        Image(key)
                            .renderingMode(.original)
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                            .padding()
                    }
                })
            }
            .navigationTitle(TAB_VIEWS["menu"]?[lang] ?? "")
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
