//
//  IngredientsView.swift
//  Dahna's Kimchi
//
//  Created by Haru Lee on 2/19/23.
//

import SwiftUI

let ingredientList = ["NapaCabbage", "BellPepper", "Radish"]

struct PhotosView: View {
    var body: some View {
        ForEach(ingredientList, id: \.self) {
            Image($0)
                .resizable()
                .aspectRatio(contentMode: .fit)
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
