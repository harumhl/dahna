//
//  ContentView.swift
//  Dhana's Kimchi
//
//  Created by Haru Lee on 11/24/22.
//

import SwiftUI

// Command + Shift + L to see systemImage list

struct MainView: View {
    @AppStorage("languages") var lang: String = UserDefaults.standard.string(forKey: "languages") ?? LANGUAGE_DEFAULT
    var body: some View {
        TabView {
            IngredientsView()
                .tabItem {
                    Label(TAB_VIEWS["ingredients"]?[lang] ?? "", systemImage: "cart.circle.fill")
                }
            MenuView()
                .tabItem {
                    Label(TAB_VIEWS["menu"]?[lang] ?? "", systemImage: "fork.knife.circle")
                }
            RecipeListView()
                .tabItem {
                    Label(TAB_VIEWS["recipes"]?[lang] ?? "", systemImage: "cooktop") // list.bullet.rectangle //list.bullet.clipboard // list.dash // list.bullet.circle.fill
                }
            SettingsView()
                .tabItem {
                    Label(TAB_VIEWS["settings"]?[lang] ?? "", systemImage: "gear.circle")
                }
        }
    }
}

struct MainView_Previews: PreviewProvider {
    static var previews: some View {
        MainView()
    }
}
