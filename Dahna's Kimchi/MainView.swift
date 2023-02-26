//
//  ContentView.swift
//  Dhana's Kimchi
//
//  Created by Haru Lee on 11/24/22.
//

import SwiftUI

// Command + Shift + L to see systemImage list

struct MainView: View {
    @AppStorage("languageChoice") var lang: String = UserDefaults.standard.string(forKey: "languageChoice") ?? GlobalConstants.languageDefault;
    var body: some View {
        TabView {
            RecipeListView()
                .tabItem {
                    Label(GlobalConstants.tabViews["recipes"]?[lang] ?? "", systemImage: "list.dash")
                }
            IngredientsView()
                .tabItem {
                    Label(GlobalConstants.tabViews["ingredients"]?[lang] ?? "", systemImage: "list.dash")
                }
            SettingsView()
                .tabItem {
                    Label(GlobalConstants.tabViews["settings"]?[lang] ?? "", systemImage: "gear.circle")
                }
        }
    }
}

struct MainView_Previews: PreviewProvider {
    static var previews: some View {
        MainView()
    }
}
