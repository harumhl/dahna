//
//  language.swift
//  Dahna's Kimchi
//
//  Created by Haru Lee on 2/24/23.
//

import Foundation
import OrderedCollections

class GlobalConstants {
    static let languageDefault = "Korean"
    static let languages: OrderedDictionary = ["Korean": "한글", "English": "English"]
    
    static let tabViews: OrderedDictionary = [
        "recipes": ["Korean": "조리법", "English": "Recipes"],
        "ingredients": ["Korean": "재료", "English": "Ingredients"],
        "settings": ["Korean": "설정", "English": "Settings"]
    ]
    static let settings: OrderedDictionary = [
        "language": ["Korean": "언어", "English": "Language"]
    ]
    static let ingredients: OrderedDictionary = [
        "NapaCabbage": ["Korean": "배추", "English": "Napa Cabbage"],
        "BellPepper": ["Korean": "피망/파프리카", "English": "Bell Pepper"],
        "Radish": ["Korean": "무", "English": "Radish"],
    ]
}
