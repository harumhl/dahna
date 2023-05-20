//
//  ContentView.swift
//  Dhana's Kimchi
//
//  Created by Haru Lee on 11/24/22.
//

import SwiftUI

// Command + Shift + L to see systemImage list

struct MainView: View {
    @AppStorage("languages") var lang = getSelection(key: "languages")
    
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
            AboutView()
                .tabItem {
                    Label(TAB_VIEWS["about"]?[lang] ?? "", systemImage: "face.smiling")
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
