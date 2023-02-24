//
//  IngredientsView.swift
//  Dahna's Kimchi
//
//  Created by Haru Lee on 2/19/23.
//

import SwiftUI

let ingredientList = ["NapaCabbage", "BellPepper", "Radish"]
func pascalCaseToSpaced(string: String) -> String {
    let regexPattern = "[A-Z-_&](?=[a-z0-9]+)|[A-Z-_&]+(?![a-z0-9])"
    return string.replacingOccurrences(of: regexPattern, with: " $0", options: .regularExpression, range: nil)
}

struct PhotosView: View {
    var body: some View {
        ForEach(ingredientList, id: \.self) {
            Text(pascalCaseToSpaced(string: $0))
            Image($0)
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
