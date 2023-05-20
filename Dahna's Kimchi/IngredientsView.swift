//
//  IngredientsView.swift
//  Dahna's Kimchi
//
//  Created by Haru Lee on 2/19/23.
//

import SwiftUI

struct PhotosView: View {
    @AppStorage("languages") var lang = getSelection(key: "languages")
    
    var body: some View {
        ForEach(INGREDIENTS.elements, id: \.key) { key, value in
            Text(value[lang] ?? "")
            Image(key)
                .resizable()
                .aspectRatio(contentMode: .fit)
                .padding()
        }
    }
}

struct IngredientsView: View {
    var body: some View {
        ScrollView {
            PhotosView()
        }
    }
}

struct IngredientsView_Previews: PreviewProvider {
    static var previews: some View {
        IngredientsView()
    }
}
