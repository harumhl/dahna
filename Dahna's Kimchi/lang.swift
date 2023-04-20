//
//  language.swift
//  Dahna's Kimchi
//
//  Created by Haru Lee on 2/24/23.
//

import Foundation
import OrderedCollections

let TAB_VIEWS: OrderedDictionary = [
    "recipes": ["Korean": "조리법", "English": "Recipes"],
    "menu": ["Korean": "다나의 김치 메뉴", "English": "Dahna's Kimchi Menu"],
    "ingredients": ["Korean": "다나의 김치 재료", "English": "Dahna's Kimchi Ingredients"],
    "settings": ["Korean": "설정", "English": "Settings"]
]
let RECIPES: OrderedDictionary = [
    "김치볶음밥": ["Korean": Recipe(title: "김치볶음밥",
                               ingredients: [
                                Ingredient(name: "김치", amount: 100, unit: "g"),
                                Ingredient(name: "양파", amount: 1, unit: "개"),
                                Ingredient(name: "밥", amount: 100, unit: "g"),
                               ],
                               content: "재료는 김치, 밥, 고기"),
              "English": Recipe(title: "Kimchi Fried Rice",
                                ingredients: [
                                 Ingredient(name: "Kimchi", amount: 100, unit: "g"),
                                 Ingredient(name: "Onion", amount: 1, unit: "onion"),
                                 Ingredient(name: "Rice", amount: 100, unit: "g"),
                                ],
                                content: "Ingredients include kimchi, rice and meat")],
    "감치부침개": ["Korean": Recipe(title: "감치부침개",
                               ingredients: [],
                               content: "재료는 김치, 부침가루"),
              "English": Recipe(title: "Kimchi Pancake",
                                ingredients: [],
                                content: "Ingredients include kimchi and pancake mix")],
    "김치찌게": ["Korean": Recipe(title: "김치찌게",
                              ingredients: [],
                              content: "재료는 김치, 물, 고기"),
             "English": Recipe(title: "Kimchi stew",
                               ingredients: [],
                               content: "Ingredients include kimchi, water and meat")]
]
let INGREDIENTS: OrderedDictionary = [
    "NapaCabbage": ["Korean": "배추", "English": "Napa Cabbage"],
    "Radish": ["Korean": "무", "English": "Radish"],
    "GreenOnion": ["Korean": "파", "English": "Green Onion"],
    "RedPepperPowder": ["Korean": "고추가루", "English": "Red Pepper Powder"],
    "Garlic": ["Korean": "마늘", "English": "Garlic"],
    "Ginger": ["Korean": "생강", "English": "Ginger"],
    "BellPepper": ["Korean": "파프리카", "English": "Red Bell Pepper"],
    "Jalapeno": ["Korean": "할라페뇨", "English": "Red Jalapeño"],
    "Onion": ["Korean": "양파", "English": "Onion"],
    "Tomato": ["Korean": "토마토", "English": "Tomato"],
    "AnchovySauce": ["Korean": "멸치액젓", "English": "Anchovy Sauce"],
    "PickledShrimps": ["Korean": "새우젓", "English": "Tiny Salted Shrimps"],
    "AppleJuice": ["Korean": "사과주스", "English": "Apple Juice"],
    "PlumExtract": ["Korean": "매실 액기스", "English": "Plum Extract"],
]
let MENUS: OrderedDictionary = [
    "BrownRice": ["Korean": "1. 다나의 김치와 배고픔과 현미밥", "English": "1. Dahna's Kimchi & Hungry & Brown Rice"],
    "SeaweedAndRice": ["Korean": "2. 다나의 김치와 김 그리고 밥", "English": "2. Dahna's Kimchi & Dried Seaweed & Rice"],
    "EggFriedRice": ["Korean": "3. 계란후라이를 얹은 김치볶음밥", "English": "3. Kimchi Fried Rice topped with Fried Egg"],
    "CheeseFriedRice": ["Korean": "4. 치즈 얹은 김치볶음밥", "English": "4. Kimchi Fried Rice topped with Cheese"],
    "SourKimchiPorkBelly": ["Korean": "5. 신김치 볶음과 삼겹살과 생야채", "English": "5. Sour Fried Kimchi & Pork Belly & Fresh Vegetables"],
    "TofuStew": ["Korean": "6. 두부 김치찌게", "English": "6. Tofu Kimchi Stew"],
    "FriedKimchiBoiledTofu": ["Korean": "7. 볶은 김치와 데친 두부", "English": "7. Fried Kimchi & Boiled Tofu"],
    "SeafoodPancake": ["Korean": "8. 김치와 해물을 섞은 전", "English": "8. Kimchi and Seafood Pancakes"],
    "NoodleWithoutSoup": ["Korean": "9. 김치 비빔국수", "English": "9. Kimchi Noodle without Soup"],
    "NoodleWithSoup": ["Korean": "10. 김치말이국수", "English": "10. Kimchi Noodle with Soup"],
]
let LANGUAGE_DEFAULT = "Korean"
let LANGUAGES: OrderedDictionary = [
    "Korean": ["Korean": "한글", "English": "Korean"],
    "English": ["Korean": "영어", "English": "English"]
]
let UNITS: OrderedDictionary = [
    "Imperial": ["Korean": "미국영국식 (oz/cup/tsp/tbsp/cup)", "English": "Imperial (oz/cup/tsp/tbsp/cup)"],
    "Metric": ["Korean": "미터법 (kg/g/L/mL)", "English": "Metric (kg/g/L/mL)"]
]
let SETTINGS_TITLES: OrderedDictionary = [
    "languages": ["Korean": "언어", "English": "Language"],
    "units": ["Korean": "단위", "English": "Units"],
]
let SETTINGS_DETAILS: OrderedDictionary = [
    "languages": LANGUAGES,
    "units": UNITS,
]
