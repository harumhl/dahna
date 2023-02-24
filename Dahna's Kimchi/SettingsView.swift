//
//  SettingsView.swift
//  Dahna's Kimchi
//
//  Created by Haru Lee on 2/24/23.
//

import SwiftUI

struct SettingsView: View {
    func updateLanguageChoice(selectedLanguage: String) {
        languageChoice = selectedLanguage;
    }

    @AppStorage("languageChoice") var languageChoice: String = (GlobalConstants.languages["Korean"] ?? "")

    var body: some View {
        GroupBox(){ // TODO styling with GroupBox and DisclosureGroup
            DisclosureGroup("Languages") {
                ForEach(GlobalConstants.languages.elements, id: \.key) { key, value in
                    Button {
                        updateLanguageChoice(selectedLanguage: key)
                    } label: {
                        Text(value)
                            .fontWeight(key == languageChoice ? .bold : .regular)
                    }

                }
            }
        }
    }
}

struct SettingsView_Previews: PreviewProvider {
    static var previews: some View {
        SettingsView()
    }
}