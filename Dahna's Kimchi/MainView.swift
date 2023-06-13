//
//  ContentView.swift
//  Dhana's Kimchi
//
//  Created by Haru Lee on 11/24/22.
//

import SwiftUI

// Command + Shift + L to see systemImage list

func getTabLabel(key: String, lang: String) -> String {
    return TAB_VIEWS[key]?[lang] ?? ""
}

struct MainView: View {
    @AppStorage("languages") var lang = getSelection(key: "languages")
    
    var body: some View {
        TabView {
            IngredientsView()
                .tabItem {
                    Label(getTabLabel(key: "ingredients", lang: lang), systemImage: "cart.circle.fill")
                }
            MenuView()
                .tabItem {
                    Label(getTabLabel(key: "menu", lang: lang), systemImage: "fork.knife.circle")
                }
            AboutView()
                .tabItem {
                    Label(getTabLabel(key: "about", lang: lang), systemImage: "face.smiling")
                }
            SettingsView()
                .tabItem {
                    Label(getTabLabel(key: "settings", lang: lang), systemImage: "gear.circle")
                }
        }
    }
}

struct MainView_Previews: PreviewProvider {
    static var previews: some View {
        MainView()
    }
}
