//
//  ContentView.swift
//  Dhana's Kimchi
//
//  Created by Haru Lee on 11/24/22.
//

import SwiftUI

struct MainView: View {
    var body: some View {
        NavigationView {
            List {
                Text("김치볶음밥")
                Text("감치부침개")
                Text("김치찌게")
            }
            .navigationTitle("Recipe")
        }
//        TabView {
//            ContentView()
//                .tabItem {
//                    Label("Menu", systemImage: "list.dash")
//                }
//        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        MainView()
    }
}
