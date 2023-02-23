//
//  ContentView.swift
//  Dhana's Kimchi
//
//  Created by Haru Lee on 11/24/22.
//

import SwiftUI

struct MainView: View {
    var body: some View {
        TabView {
            RecipeListView()
                .tabItem {
                    Label("조리법", systemImage: "list.dash")
                }
            IngredientsView()
                .tabItem {
                    Label("재료", systemImage: "list.dash")
                }
        }
    }
}

struct MainView_Previews: PreviewProvider {
    static var previews: some View {
        MainView()
    }
}
