//
//  ContentView.swift
//  Dhana's Kimchi
//
//  Created by Haru Lee on 11/24/22.
//

import SwiftUI

// Command + Shift + L to see systemImage list

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
            SettingsView()
                .tabItem {
                    Label("설정", systemImage: "gear.circle")
                }
        }
    }
}

struct MainView_Previews: PreviewProvider {
    static var previews: some View {
        MainView()
    }
}
