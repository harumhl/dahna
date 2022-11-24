//
//  ContentView.swift
//  Dhana's Kimchi
//
//  Created by Haru Lee on 11/24/22.
//

import SwiftUI

struct RecipeListView: View {
    var body: some View {
        NavigationView {
            List {
                Text("김치볶음밥")
                Text("감치부침개")
                Text("김치찌게")
            }
            .navigationTitle("Recipe")
        }
    }
}

struct RecipeView_Previews: PreviewProvider {
    static var previews: some View {
        RecipeListView()
    }
}
