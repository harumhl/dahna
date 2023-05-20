//
//  ContentView.swift
//  Dhana's Kimchi
//
//  Created by Haru Lee on 11/24/22.
//

import SwiftUI

// Command + Shift + L to see systemImage list

func getTabLabel(key: String) -> String {
    let lang = getSelection(key: "languages")
    return TAB_VIEWS[key]?[lang] ?? ""
}

struct MainView: View {
    @AppStorage("languages") var lang = getSelection(key: "languages")
    
    var body: some View {
        TabView {
            IngredientsView()
                .tabItem {
                    Label(getTabLabel(key: "ingredients"), systemImage: "cart.circle.fill")
                }
            MenuView()
                .tabItem {
                    Label(getTabLabel(key: "menu"), systemImage: "fork.knife.circle")
                }
            AboutView()
                .tabItem {
                    Label(getTabLabel(key: "about"), systemImage: "face.smiling")
                }
            SettingsView()
                .tabItem {
                    Label(getTabLabel(key: "settings"), systemImage: "gear.circle")
                }
        }
    }
}

struct MainView_Previews: PreviewProvider {
    static var previews: some View {
        MainView()
    }
}
