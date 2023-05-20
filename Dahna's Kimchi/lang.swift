//
//  language.swift
//  Dahna's Kimchi
//
//  Created by Haru Lee on 2/24/23.
//

import Foundation
import OrderedCollections

//enum Language {
//    case Korean, English
//}
//let K = Language.Korean; let E = Language.English;

func getSelection(key: String) -> String {
    return (UserDefaults.standard.string(forKey: key) ?? DEFAULTS[key] ?? "")
}

let TAB_VIEWS: OrderedDictionary = [
    "recipes": ["Korean": "조리법", "English": "Recipes"],
    "menu": ["Korean": "단아의 김치 메뉴", "English": "Dahna's Kimchi Menu"],
    "ingredients": ["Korean": "단아의 김치 재료", "English": "Dahna's Kimchi Ingredients"],
    "settings": ["Korean": "설정", "English": "Settings"]
]
let RECIPES: OrderedDictionary = [
    "BrownRice": ["Korean": Recipe(title: "1. 단아의 김치와 배고픔과 현미밥",
                                   ingredients: [
                                    Ingredient(name: "김치", amount: 100, unit: "g"),
                                    Ingredient(name: "양파", amount: 1, unit: "개"),
                                    Ingredient(name: "밥", amount: 100, unit: "g"),
                                   ],
                                   content: "재료는 김치, 밥, 고기",
                                   steps: [
                                    RecipeStep(instruction: "1. 밥 하기", photoId: ""),
                                    RecipeStep(instruction: "2. 고기 준비", photoId: ""),
                                   ]),
                  "English": Recipe(title: "1. Dahna's Kimchi & Hungry & Brown Rice",
                                    ingredients: [
                                     Ingredient(name: "Kimchi", amount: 100, unit: "g"),
                                     Ingredient(name: "Onion", amount: 1, unit: "개"),
                                     Ingredient(name: "Rice", amount: 100, unit: "g"),
                                    ],
                                    content: "Ingredients include kimchi, rice and meat",
                                    steps: [
                                     RecipeStep(instruction: "1. 밥 하기", photoId: ""),
                                     RecipeStep(instruction: "2. 고기 준비", photoId: ""),
                                    ]),
    ],
    "SeaweedAndRice": ["Korean": Recipe(title: "2. 단아의 김치와 김 그리고 밥",
                                   ingredients: [
                                    Ingredient(name: "김치", amount: 100, unit: "g"),
                                    Ingredient(name: "양파", amount: 1, unit: "개"),
                                    Ingredient(name: "밥", amount: 100, unit: "g"),
                                   ],
                                   content: "재료는 김치, 밥, 고기",
                                        steps: [
                                         RecipeStep(instruction: "1. 밥 하기", photoId: ""),
                                         RecipeStep(instruction: "2. 고기 준비", photoId: ""),
                                        ]),
                  "English": Recipe(title: "2. Dahna's Kimchi & Dried Seaweed & Rice",
                                    ingredients: [
                                     Ingredient(name: "Kimchi", amount: 100, unit: "g"),
                                     Ingredient(name: "Onion", amount: 1, unit: "개"),
                                     Ingredient(name: "Rice", amount: 100, unit: "g"),
                                    ],
                                    content: "Ingredients include kimchi, rice and meat",
                                    steps: [
                                     RecipeStep(instruction: "1. 밥 하기", photoId: ""),
                                     RecipeStep(instruction: "2. 고기 준비", photoId: ""),
                                    ]),
    ],
    "EggFriedRice": ["Korean": Recipe(title: "3. 계란후라이를 얹은 김치볶음밥",
                                   ingredients: [
                                    Ingredient(name: "김치", amount: 100, unit: "g"),
                                    Ingredient(name: "양파", amount: 1, unit: "개"),
                                    Ingredient(name: "밥", amount: 100, unit: "g"),
                                   ],
                                   content: "재료는 김치, 밥, 고기",
                                      steps: [
                                       RecipeStep(instruction: "밥 하기", photoId: ""),
                                       RecipeStep(instruction: "고기 준비", photoId: ""),
                                      ]),
                  "English": Recipe(title: "3. Kimchi Fried Rice topped with Fried Egg",
                                    ingredients: [
                                     Ingredient(name: "Kimchi", amount: 100, unit: "g"),
                                     Ingredient(name: "Onion", amount: 1, unit: "개"),
                                     Ingredient(name: "Rice", amount: 100, unit: "g"),
                                    ],
                                    content: "Ingredients include kimchi, rice and meat",
                                    steps: [
                                     RecipeStep(instruction: "밥 하기", photoId: ""),
                                     RecipeStep(instruction: "고기 준비", photoId: ""),
                                    ]),
    ],
    "CheeseFriedRice": ["Korean": Recipe(title: "4. 치즈 얹은 김치볶음밥",
                                   ingredients: [
                                    Ingredient(name: "김치", amount: 100, unit: "g"),
                                    Ingredient(name: "양파", amount: 1, unit: "개"),
                                    Ingredient(name: "밥", amount: 100, unit: "g"),
                                   ],
                                   content: "재료는 김치, 밥, 고기",
                                         steps: [
                                          RecipeStep(instruction: "밥 하기", photoId: ""),
                                          RecipeStep(instruction: "고기 준비", photoId: ""),
                                         ]),
                  "English": Recipe(title: "4. Kimchi Fried Rice topped with Cheese",
                                    ingredients: [
                                     Ingredient(name: "Kimchi", amount: 100, unit: "g"),
                                     Ingredient(name: "Onion", amount: 1, unit: "개"),
                                     Ingredient(name: "Rice", amount: 100, unit: "g"),
                                    ],
                                    content: "Ingredients include kimchi, rice and meat",
                                    steps: [
                                     RecipeStep(instruction: "밥 하기", photoId: ""),
                                     RecipeStep(instruction: "고기 준비", photoId: ""),
                                    ]),
    ],
    "SourKimchiPorkBelly": ["Korean": Recipe(title: "5. 신김치 볶음과 삼겹살과 생야채",
                                   ingredients: [
                                    Ingredient(name: "김치", amount: 100, unit: "g"),
                                    Ingredient(name: "양파", amount: 1, unit: "개"),
                                    Ingredient(name: "밥", amount: 100, unit: "g"),
                                   ],
                                   content: "재료는 김치, 밥, 고기",
                                             steps: [
                                              RecipeStep(instruction: "밥 하기", photoId: ""),
                                              RecipeStep(instruction: "고기 준비", photoId: ""),
                                             ]),
                  "English": Recipe(title: "5. Sour Fried Kimchi & Pork Belly & Fresh Vegetables",
                                    ingredients: [
                                     Ingredient(name: "Kimchi", amount: 100, unit: "g"),
                                     Ingredient(name: "Onion", amount: 1, unit: "개"),
                                     Ingredient(name: "Rice", amount: 100, unit: "g"),
                                    ],
                                    content: "Ingredients include kimchi, rice and meat",
                                    steps: [
                                     RecipeStep(instruction: "밥 하기", photoId: ""),
                                     RecipeStep(instruction: "고기 준비", photoId: ""),
                                    ]),
    ],
    "TofuStew": ["Korean": Recipe(title: "6. 두부 김치찌게",
                                   ingredients: [
                                    Ingredient(name: "김치", amount: 100, unit: "g"),
                                    Ingredient(name: "양파", amount: 1, unit: "개"),
                                    Ingredient(name: "밥", amount: 100, unit: "g"),
                                   ],
                                   content: "재료는 김치, 밥, 고기",
                                  steps: [
                                   RecipeStep(instruction: "밥 하기", photoId: ""),
                                   RecipeStep(instruction: "고기 준비", photoId: ""),
                                  ]),
                  "English": Recipe(title: "6. Tofu Kimchi Stew",
                                    ingredients: [
                                     Ingredient(name: "Kimchi", amount: 100, unit: "g"),
                                     Ingredient(name: "Onion", amount: 1, unit: "개"),
                                     Ingredient(name: "Rice", amount: 100, unit: "g"),
                                    ],
                                    content: "Ingredients include kimchi, rice and meat",
                                    steps: [
                                     RecipeStep(instruction: "밥 하기", photoId: ""),
                                     RecipeStep(instruction: "고기 준비", photoId: ""),
                                    ]),
    ],
    "FriedKimchiBoiledTofu": ["Korean": Recipe(title: "7. 볶은 김치와 데친 두부",
                                   ingredients: [
                                    Ingredient(name: "김치", amount: 100, unit: "g"),
                                    Ingredient(name: "양파", amount: 1, unit: "개"),
                                    Ingredient(name: "밥", amount: 100, unit: "g"),
                                   ],
                                   content: "재료는 김치, 밥, 고기",
                                               steps: [
                                                RecipeStep(instruction: "밥 하기", photoId: ""),
                                                RecipeStep(instruction: "고기 준비", photoId: ""),
                                               ]),
                  "English": Recipe(title: "7. Fried Kimchi & Boiled Tofu",
                                    ingredients: [
                                     Ingredient(name: "Kimchi", amount: 100, unit: "g"),
                                     Ingredient(name: "Onion", amount: 1, unit: "개"),
                                     Ingredient(name: "Rice", amount: 100, unit: "g"),
                                    ],
                                    content: "Ingredients include kimchi, rice and meat",
                                    steps: [
                                     RecipeStep(instruction: "밥 하기", photoId: ""),
                                     RecipeStep(instruction: "고기 준비", photoId: ""),
                                    ]),
    ],
    "SeafoodPancake": ["Korean": Recipe(title: "8. 김치와 해물을 섞은 전",
                                   ingredients: [
                                    Ingredient(name: "김치", amount: 100, unit: "g"),
                                    Ingredient(name: "양파", amount: 1, unit: "개"),
                                    Ingredient(name: "밥", amount: 100, unit: "g"),
                                   ],
                                   content: "재료는 김치, 밥, 고기",
                                        steps: [
                                         RecipeStep(instruction: "밥 하기", photoId: ""),
                                         RecipeStep(instruction: "고기 준비", photoId: ""),
                                        ]),
                  "English": Recipe(title: "8. Kimchi and Seafood Pancakes",
                                    ingredients: [
                                     Ingredient(name: "Kimchi", amount: 100, unit: "g"),
                                     Ingredient(name: "Onion", amount: 1, unit: "개"),
                                     Ingredient(name: "Rice", amount: 100, unit: "g"),
                                    ],
                                    content: "Ingredients include kimchi, rice and meat",
                                    steps: [
                                     RecipeStep(instruction: "밥 하기", photoId: ""),
                                     RecipeStep(instruction: "고기 준비", photoId: ""),
                                    ]),
    ],
    "NoodleWithoutSoup": ["Korean": Recipe(title: "9. 김치 비빔국수",
                                   ingredients: [
                                    Ingredient(name: "김치", amount: 100, unit: "g"),
                                    Ingredient(name: "양파", amount: 1, unit: "개"),
                                    Ingredient(name: "밥", amount: 100, unit: "g"),
                                   ],
                                   content: "재료는 김치, 밥, 고기",
                                           steps: [
                                            RecipeStep(instruction: "밥 하기", photoId: ""),
                                            RecipeStep(instruction: "고기 준비", photoId: ""),
                                           ]),
                  "English": Recipe(title: "9. Kimchi Noodle without Soup",
                                    ingredients: [
                                     Ingredient(name: "Kimchi", amount: 100, unit: "g"),
                                     Ingredient(name: "Onion", amount: 1, unit: "개"),
                                     Ingredient(name: "Rice", amount: 100, unit: "g"),
                                    ],
                                    content: "Ingredients include kimchi, rice and meat",
                                    steps: [
                                     RecipeStep(instruction: "밥 하기", photoId: ""),
                                     RecipeStep(instruction: "고기 준비", photoId: ""),
                                    ]),
    ],
    "NoodleWithSoup": ["Korean": Recipe(title: "10. 김치말이국수",
                                   ingredients: [
                                    Ingredient(name: "김치", amount: 100, unit: "g"),
                                    Ingredient(name: "양파", amount: 1, unit: "개"),
                                    Ingredient(name: "밥", amount: 100, unit: "g"),
                                   ],
                                   content: "재료는 김치, 밥, 고기",
                                        steps: [
                                         RecipeStep(instruction: "밥 하기", photoId: ""),
                                         RecipeStep(instruction: "고기 준비", photoId: ""),
                                        ]),
                  "English": Recipe(title: "10. Kimchi Noodle with Soup",
                                    ingredients: [
                                     Ingredient(name: "Kimchi", amount: 100, unit: "g"),
                                     Ingredient(name: "Onion", amount: 1, unit: "개"),
                                     Ingredient(name: "Rice", amount: 100, unit: "g"),
                                    ],
                                    content: "Ingredients include kimchi, rice and meat",
                                    steps: [
                                     RecipeStep(instruction: "밥 하기", photoId: ""),
                                     RecipeStep(instruction: "고기 준비", photoId: ""),
                                    ]),
    ],
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
let RECIPE_TERMS: OrderedDictionary = [
    "Ingredients": ["Korean": "재료", "English": "Ingredients"],
    "Recipe": ["Korean": "조리법", "English": "Recipe"],
]
let DEFAULTS: OrderedDictionary = [
    "languages": "Korean",
    "units": "Metric",
]
let LANGUAGES: OrderedDictionary = [
    "Korean": ["Korean": "한글", "English": "Korean"],
    "English": ["Korean": "영어", "English": "English"]
]
let UNITS: OrderedDictionary = [
    "Imperial": ["Korean": "미국영국식 (oz/cup/tsp/tbsp/cup)", "English": "Imperial (oz/cup/tsp/tbsp/cup)"],
    "Metric": ["Korean": "미터법 (kg/g/L/mL)", "English": "Metric (kg/g/L/mL)"]
//    Mass: g, oz (kg, lb)
//    Volume: mL, cup, tsp, tbsp (L, pint, guart, gal)
//    Length: cm, in, ft (m, yard)
//    Temperature: C, F
]
let SETTINGS_TITLES: OrderedDictionary = [
    "languages": ["Korean": "언어", "English": "Language"],
    "units": ["Korean": "단위", "English": "Units"],
]
let SETTINGS_DETAILS: OrderedDictionary = [
    "languages": LANGUAGES,
    "units": UNITS,
]
