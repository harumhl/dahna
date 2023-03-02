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
    static let recipes: OrderedDictionary = [
        "김치볶음밥": ["Korean": Recipe(title: "김치볶음밥",
                                   content: "재료는 김치, 밥, 고기"),
                  "English": Recipe(title: "Kimchi Fried Rice",
                                    content: "Ingredients include kimchi, rice and meat")],
        "감치부침개": ["Korean": Recipe(title: "감치부침개",
                                   content: "재료는 김치, 부침가루"),
                  "English": Recipe(title: "Kimchi Pancake",
                                    content: "Ingredients include kimchi and pancake mix")],
        "김치찌게": ["Korean": Recipe(title: "김치찌게",
                                  content: "재료는 김치, 물, 고기"),
                 "English": Recipe(title: "Kimchi stew",
                                   content: "Ingredients include kimchi, water and meat")]
    ]
    static let ingredients: OrderedDictionary = [
        "NapaCabbage": ["Korean": "배추", "English": "Napa Cabbage"],
        "BellPepper": ["Korean": "피망/파프리카", "English": "Bell Pepper"],
        "Radish": ["Korean": "무", "English": "Radish"],
        "AppleJuice": ["Korean": "사과주스", "English": "Apple Juice"],
        "Garlic": ["Korean": "마늘", "English": "Garlic"],
        "Ginger": ["Korean": "생강", "English": "Ginger"],
        "Tomato": ["Korean": "토마토", "English": "Tomato"],
        "GreenOnion": ["Korean": "파", "English": "Green Onion"],
        "Jalapeno": ["Korean": "할라페뇨", "English": "Jalapeño"],
        "PickledShrimps": ["Korean": "새우젓", "English": "Pickled Shrimps"],
        "Onion": ["Korean": "양파", "English": "Onion"],
        "AnchovySauce": ["Korean": "멸치액젓", "English": "Anchovy Sauce"],
    ]
    static let settings: OrderedDictionary = [
        "language": ["Korean": "언어", "English": "Language"]
    ]
}
