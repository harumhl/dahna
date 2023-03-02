//
//  SettingsView.swift
//  Dahna's Kimchi
//
//  Created by Haru Lee on 2/24/23.
//

import SwiftUI

struct SettingsView: View {
    func getSelection(key: String) -> String {
        return (UserDefaults.standard.value(forKey: key) ?? "") as! String
    }
    
    func setSelection(key: String, value: String) {
        UserDefaults.standard.set(value, forKey: key)
    }

    // Using @AppStorage to show the changes being applied instantly // TODO? so I don't have to add one every time
    @AppStorage("languages") var lang: String = UserDefaults.standard.string(forKey: "languages") ?? LANGUAGE_DEFAULT
    @AppStorage("units") var unit: String = UserDefaults.standard.string(forKey: "units") ?? ""

    var body: some View {
        GroupBox(){ // TODO styling with GroupBox and DisclosureGroup
            ForEach(SETTINGS_TITLES.elements, id: \.key) { settingKey, settingVal in
                DisclosureGroup(SETTINGS_TITLES[settingKey]?[lang] ?? "") {
                    ForEach(SETTINGS_DETAILS[settingKey]?.elements ?? LANGUAGES.elements, id: \.key) { key, value in // TODO alternative to LANGUAGES.elements
                        Button {
                            setSelection(key: settingKey, value: key)
                        } label: {
                            Text(value[lang] ?? "")
                                .fontWeight(key == lang || key == unit ? .bold : .regular) // TODO simplify
                        }
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
